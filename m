Return-Path: <devicetree+bounces-268009-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4PruJhLnnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268009-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:59:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CC518ADDA
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:59:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03EFB3095264
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9960F3A9628;
	Tue, 24 Feb 2026 17:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S6z45EV4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SIEfzybQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9CF63A7F5F
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955754; cv=none; b=D6qt+3oWdgV6BLFL1vAwqTrUrFRxj3Uu5P/Bu9yN6XEkWfec4ajWw0RD3qrOah4LnnmagN7NJCo9zcL2Qe0zKJYTukGP/hLU4nZsC4kMrSkFs1oXYuOVsFvdNN2g0Sdz27+0TnMahyXXN7XzYcRJ+gNwjBcYm2tFmnRMREhW1CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955754; c=relaxed/simple;
	bh=DIZztn7GRp8nfyI6TfrlMQ62hz2zY99dI5lpx7SpZJs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oallndxCSZa/HCA3VgpuOYg85zV86rsTY7bQ2O6DHm4dTAl/fxFtO3aimzIvIUzvSnXPmV6da4fxRX4WyDepTpGEZLStnfNEoT5BqeJNT5pfUJwiOo6nXD9JhpX+HGsUzdAwy/cTH3hqP+DuGo0n/JxR0glDGkWBzcdHZ+HXUfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S6z45EV4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SIEfzybQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OHOhBO057136
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=BuYNK5gGs7TF703M/4BciC
	3vLGDek4/jqEOiMPcO9C4=; b=S6z45EV4ChEIAjDAygUnjKqsUJd/hc2snSO4F1
	IgdBf5xtR8Yq8H4dHo1HduIOUooBaE4vW/cEVKPD6cTFzKptRuArI/7WzsFDlwwM
	GABxufZIo+ekPBDTGy3VQ6suWfK3OaT1TD17efc4iDlYivurU8rgCuByy6qT1UTp
	tHnp+Ch/ppItfx6o+7huZjNQhyYFcoXyCLBKdbLHT6ASOnl+eP56Q/6qpzUE62C8
	mz9rP+27hJXAFALeXi4WGbByVWnn7fGB2r4hi+oIIZI7HHB89Ihv/v8hFQXPZpKW
	97dtQDGMwDP7x1d0GZsuwi9W8aS6bMCG3HIyI/ArQ/BtrYqA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch9sa9ggj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:55:52 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c70c114e02dso1215726a12.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 09:55:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771955751; x=1772560551; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BuYNK5gGs7TF703M/4BciC3vLGDek4/jqEOiMPcO9C4=;
        b=SIEfzybQmWhttq0qwIiSM9rS8e9lxnV2kVDoOwAD1s/2VmtPvr//ZlahSugOEsdDAI
         FqckI4IYz8sx/BlgT1C+wdu6F2fUVhnaOkkWprhKZi1HbU1MvZaFuQj7Av7bWPHVOdYS
         kIKZuSs3D6NdMyRLfaBtnDes70fB8y26HfBr/Cn1+8F9S6yjM+ijPeoJmBe6ogDxjGIU
         3WqvY7B+hVBcaOjFVNsEhdJYq88CBGsdijEnV+N71ZzU1iXYCfb7ax5+qNSUZsmzONi2
         4YE0S+3uHfjfnJQL0cDrFW+J6BAWb2UrZo/eMeLbjKalnUGF5p5bWB57ecSZWqJKv3a1
         yIEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771955752; x=1772560552;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BuYNK5gGs7TF703M/4BciC3vLGDek4/jqEOiMPcO9C4=;
        b=D3E2J2LkJ04pQUu0sXWFfxugLJJbfEc//5awvlXcNUOTGrfHXcZjOFSfgVrUW3V9RG
         lChyuh71H0xcCbk6EeZpqmHTOcTnf76/0Tjh6mKZv9Uve1+JC8EVVKy2BmkEPRamcEPn
         j9afd1qLxvuJEhtkjMoCFDINBb/wrjIpXWwlQa7WNQpETwpKlGLNlUBOyC9Y0BbMHkN4
         PdpB+lp1AsMNdnd8Qd4CEOHVa6t7+533IPbqPgbkC5a/zKNJx52iQJ86GaJTVTK0N+Ol
         x7FCkI6F94Wa0NHzAYdBoeIxNjJAhfUx8t6f75BgQJEmpXVawPMLgzHMqA+cmrsg2HUe
         zpKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQ+8ySXPd/WDSmY+0gcHv+d95Y1e7uT7bRLSGArq//NWd7d5xUXT8RDb/OSlqpAAc2VBuDdxlsJ3CR@vger.kernel.org
X-Gm-Message-State: AOJu0YwNVdcWot02Jc5jj7JXL9BTYEM9qZX40aYaY1kd098j871o8SvV
	4fFJuvPXj4qJESZb7+FPXkksRZF0/m9u1fKaOX+mSgCe41BiSGIsIPC1q8z9FUHMcHVQhWMBf6G
	sdVL5aCt3IarzUGyEVxf46QFF0QH8m0xQBZntohvR4o6CEPIxs3XaRgWbo+0JmylI
X-Gm-Gg: ATEYQzxgpka1rvnBulBYBaZLLOyesX4HjME/ipVCRl8drQIr7nnouP4FEfBqozBiOUN
	GPhlfeR3FtempPjzxg4M9jys+3RraAB4DY12kguSJCG5SKUSiF4uz646XUhZUYEVWYTOa3K/A2P
	S+SLTocKIkk8t1rdhsGvE7iISco/0qljUF4r+haqKdzuim6cPlUgBLjghRBAfcocOFXBSD88qWr
	QQpkE4ItqKmnlLsUrA0oa8pEXo1NT5OC3VIuIh7qhsc7pMIJULKUI+92HzOJDODkXmGcpNWAULO
	ehwZkYmTS1KAnpTALi5gcA5lxgg7Rf4SszBxev6+eY24Pdv1uqDp8NUoVNqKHRaBGcCQsbrfwvY
	OJgFfU+49mQT/MK4HLMsSerAgxWdqIWJ+BdaMwMZihCNjDkO2EoWRSVH+mJQA0GrU8/WzwfVt6L
	cdEa3IhmAvd+UBuaeVwbYv9/YBRIi+/bUTCTi8i0Z7CQ==
X-Received: by 2002:a05:6a00:2354:b0:824:91f5:aa2d with SMTP id d2e1a72fcca58-826daa6725emr6281443b3a.5.1771955751291;
        Tue, 24 Feb 2026 09:55:51 -0800 (PST)
X-Received: by 2002:a05:6a00:2354:b0:824:91f5:aa2d with SMTP id d2e1a72fcca58-826daa6725emr6281425b3a.5.1771955750694;
        Tue, 24 Feb 2026 09:55:50 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd68e147sm10338005b3a.19.2026.02.24.09.55.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 09:55:49 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Subject: [PATCH v4 0/2] Add lontium lt8713sx bridge driver
Date: Tue, 24 Feb 2026 23:25:34 +0530
Message-Id: <20260224-lt8713sx-bridge-driver-v4-0-b5603f5458d8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABbmnWkC/4XNTQ7CIBAF4KsY1tIwA9jiynsYF/zVkqhVqKSm6
 d1FN7qwcTPJm5f5ZiLJx+AT2a4mEn0OKfSXEsR6RWynL0dPgyuZIEMJAJKehqYGnkZqYnCldjF
 kHynHmgkhpbFKk3J8jb4N4xveH0ruQhr6+Hj/yfDa/iUzUEaNkxos2JozvetTqm53fbL9+VyVQ
 V5yxm+tWdSwaCi1EwobpgEWNP7REJc1XjQFG9Ua3zIvzQ9tnucnxByIKl8BAAA=
X-Change-ID: 20251115-lt8713sx-bridge-driver-32704455bc9a
To: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Tony <syyang@lontium.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>,
        =?utf-8?q?=E6=9C=B1=E6=99=93=E6=98=8E?= <xmzhu@lontium.corp-partner.google.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771955743; l=2039;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=DIZztn7GRp8nfyI6TfrlMQ62hz2zY99dI5lpx7SpZJs=;
 b=sec6qpxkmOJ1nftTfPduQBbBusYllsemNyffVhpFcTp9+q8JW2nFYQ5teRHvqUgws5KBDNdqw
 m6NmZAJdjfLCLk6qaM11FuIcR9+KPWBIjDtBPe9rNFvHirgxBkkWN57
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDE1MSBTYWx0ZWRfX844hzRPyOtmj
 7i49hYFCAanqFwE7QNxew3VjqqHU6efrsxqPZev9McxG3EGc/4EQ73u5HyuQpKdn+wTBzYSF8/R
 us8cqZPjdSyX74CsZq5zQDpu5D3BTt5iHbR4iKNk2vhl1hmGblPrV3qKfAt73pEzH+350wiK1TF
 MApmFLd8Gcids5yc3ikg4xHg/WvXGIFJHZCC6bhDIm0Om/4mihQB9mL+gBzHXvnoZEKtM0Uhmrd
 M3YZT/A74paNpl3wEXEwuOePHEl0HL16DUrcC1VPD9isgnX5Fqy2ofOOt3+6cF4q9tmrGiIOBp2
 2pv4Z+9R90XC62Yq8RPxTs2OMyFIhxoK4kQ/lWbXlNQSQpG3tqquv2OhBvWcY8D1WEVYMhhcBho
 dFIyqrDhItd1IwwDVwE+YK4PkDnUkZMG625P46XxdkuIukNLbffshbnLgBkfS6jS4DoVabNxQx1
 G1N6ndHrAmsgsg1BdiQ==
X-Proofpoint-ORIG-GUID: nYtxR4BQidvtnzgBcm1KNG124ehTTJDQ
X-Authority-Analysis: v=2.4 cv=e7ELiKp/ c=1 sm=1 tr=0 ts=699de628 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QxBZ9i5KDo26hP1ghMIA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: nYtxR4BQidvtnzgBcm1KNG124ehTTJDQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_02,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240151
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268009-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,lontium.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: F3CC518ADDA
X-Rspamd-Action: no action

The lt8713sx is a Type-C/DP1.4 to Type-C/DP1.4/HDMI2.0 converter,
with three configurable DP1.4/HDMI2.0/DP++ output interfaces and
audio output interface.

This series provides bridge driver and dt bindings for lt8713sx.
The driver is required for firmware upgrade and enabling the bridge chip.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
Changes in v4:
- Improved crc calculation, calculated on padded buffer instead of bit
  by bit.
- Fixed brm bridge chain, using single drm_bridge as bridge chip itself will
  take care of providing all edp outputs from single input.
- Used guard mutex where needed.
- Link to v3: https://lore.kernel.org/r/20251228-lt8713sx-bridge-driver-v3-0-9169fbef0e5b@oss.qualcomm.com

Changes in v3:
- Used linux/sizes.h header for size definations.
- Used linux/crc8.h for CRC calculation
- Added Basic drm_bridge changes to support corresponding ports handeling in dt
- Ran coccinelle, smatch and sparse checkpatch.pl tools to improve code quality.
- Link to v2: https://lore.kernel.org/r/20251118-lt8713sx-bridge-driver-v2-0-25ad49280a11@oss.qualcomm.com

Changes in v2:
- Addressed review comments from V1, majorly:
- Fixed DCO chain.
- Added supply in bindings.
- Handeled deferred probe in lt8713sx driver probe.
- Link to v1: https://lore.kernel.org/r/20251115-lt8713sx-bridge-driver-v1-0-bd5a1c1c730a@oss.qualcomm.com

---
Vishnu Saini (2):
      dt-bindings: bridge: lt8713sx: Add bindings
      drm/bridge: add support for lontium lt8713sx bridge driver

 .../bindings/display/bridge/lontium,lt8713sx.yaml  | 113 ++++
 drivers/gpu/drm/bridge/Kconfig                     |  10 +
 drivers/gpu/drm/bridge/Makefile                    |   1 +
 drivers/gpu/drm/bridge/lontium-lt8713sx.c          | 598 +++++++++++++++++++++
 4 files changed, 722 insertions(+)
---
base-commit: de0d6e19d2ef33ba34be2467ffdf3595da5f5326
change-id: 20251115-lt8713sx-bridge-driver-32704455bc9a

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


