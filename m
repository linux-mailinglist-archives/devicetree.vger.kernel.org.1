Return-Path: <devicetree+bounces-269904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CMqFERrpWkaAQYAu9opvQ
	(envelope-from <devicetree+bounces-269904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:49:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AD75E1D6CFE
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:49:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5F1503017FA8
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:49:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478E23563C2;
	Mon,  2 Mar 2026 10:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VgOA84RN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fHwZCHO8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3103563E9
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448577; cv=none; b=ApUGbv9OhlwlVKpPZcAAyYGV68bkSnh0vzDndyKPyZw3OLXmhl2gLXBIvSSZq9Zjlr3UxR+WzuNDTeeffN0NTTiYvY5fxWLUWMCW5l8fnLjl1kg45DclxXkPwkmUhuYvsG1cKqOyUAYc3uJ5lCeAsjOkY7Fn3rAn9YFnk1Cl10A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448577; c=relaxed/simple;
	bh=c/MjGLzehNhtSesMBugSqhDY6Jq3MzPaWtpVEw841y0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Vfp1cVWVQHa184eUTHw90oDqTBi+h23VrR/rbHnaA2ddBe/Ma2Is1fUuYYWaXTsEqbzmGqe3Ej9FfAZ0SJXAJTQS47nKsQ4b11xN52iYagC4txgKxZYZhcLemw/IXaqmKSeEm9T+Axt5JBk1mFxJxoAizF0+45/aZdcDtDG4rRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VgOA84RN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fHwZCHO8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62285brm662340
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 10:49:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=gQxp8A8SSwIiq0ExgUsWhZ
	eSvDCdzUJskQ/r3mYDhHs=; b=VgOA84RNd4EosX8qFEvuHbyg9jXfZf6aSeeaX8
	OAKUGX1J4WNHpNjSfahucm8+y/mm7n8fSmKTCJtpxsDYbFlUd+AGRsyF/UjRMRSg
	XusIqmfFGycZPWMwMd/AC3O640wkt54PHfxIvlCqHrW3p2jenHgrZLA7EZRmEKcY
	IU1lyz9nSdXpaSruQywAhbipQ3c8EryEzOFI7/30925Qxol+VIzGbyL8ZYBhLnpX
	05+Cw3to3RiamEDEQ43XhYbVODBC6zBs50OiyOfdHNjuxE7hHI+YEfd+Wb5YxBab
	sH2OTQAiBTcR9wJclsqOWaD/ksepIRtIVjzxA6MMWWqW8SEg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn6r2rnjk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 10:49:34 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8273494d873so1681140b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:49:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772448574; x=1773053374; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gQxp8A8SSwIiq0ExgUsWhZeSvDCdzUJskQ/r3mYDhHs=;
        b=fHwZCHO80hhKshX/SIThzageGh4iKcAUsERGK0cxM79CHUfSi48u7iMbm5aWtFrkq4
         vTZJSg4bQh5ERgkN/Nq1YgIJ3IE473DHgsD/hFeE4tnAyk05M/7D+/oThyhPK0Lz0iC9
         AD46zElOyA8Kvir0GvYdlZu9vKAwTQHmzZ+YDOqZesQFLM6/FA1rvvkvNw2YdRMK8Qih
         lBDUzZcpoZl7rlNufcyzOVyH4eLxoPcZ/VORA30Xaxg8q5DjolsS2yqUL86rP1bm0yqS
         2yxyLL25SmLOfsyKaslr55mVtEz3Zms39hhzbBPggkhpu4LFL48e3R350wZx8rlz2dwy
         UL+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448574; x=1773053374;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQxp8A8SSwIiq0ExgUsWhZeSvDCdzUJskQ/r3mYDhHs=;
        b=oKD8poUuuIo+B1NaKXFoZeEeno87m5AHANhz9yEoxiOseha7MyhnKwwxXyhb2iA0yO
         gaU2rs7MGtHPR9Tpu1oQHDtqfylWiEam9zW7jg4B0bDLpGm1sZJa7a+rThJHnn1KqkH/
         aFXq6z5LcVBCMTNG2RFZll7KEb3Za+OfC7uG2IvizhcEpF8pHzppy+E6JldvvXzsG0wk
         c6YNCrqc4szKHeQB8lA7+MWa0juhog4IXSm915FJMYyC+Lc0Aa7G69O1towq1xmpRc2b
         n7XPoxiv/sBnWI02ybV4iuUXdW9Xpkmo3oqtkWrfafWCSF1UwffWlByByqHvMgT27lbE
         BzXA==
X-Forwarded-Encrypted: i=1; AJvYcCWe9/sEiOkH3SJztWgOizFlaKoOlMVK8xOLF3qKJSy6maXFPVr6DCWFoYfUd2r/ePwe7Xu2JGawJUYR@vger.kernel.org
X-Gm-Message-State: AOJu0YyXndoqWFkuWw6EGpDZBMLFotdoxds+QDfn9xArDrQB/IuOBqoR
	jVwM3RiCxsXj86mHd71vSRvwbDd6eVU3Gu8yFW553GnK0qDXF7YVXP/ZmZyeb+yzOrWFByeMCM1
	qLSDLD0QqaYNCaXJjobEtn7CUEkVJoozCS1lwbeRq4G3dqb8SE4bqtrE5ievJKRTH
X-Gm-Gg: ATEYQzxDcL14CqX83yOa0v+U/YpwKN0+wv/wgcCn0TB3SKMfWg5SOkLAmOTJ+2odQZ4
	ST9o0ErWmNVsg5tdrd9PODGPmFhNjMaaMu60OyVpWqYTfLuwT8KqukYdJOnzMvhH3dhENGVATlM
	wzOcZ3KLEwEfHW1qj59lcRKPbIhp0aTCLpEJgoxZJ/QgDeQgJ2BCePsWyWeag1L100YcwGc8wpD
	Ibu7ne+UpqDaSgAVTFqjSk0U2gFqdgnQynCwtJt0p0rulzzc2Yn4Rq8TqTRg6wJ4IvigjqBP4M+
	MHf76IXYDJFSeHseO2EXDaVbAO+asncuVWbOPyflzl/Wr10+9jW0L6uQWJtjVRVVVFMU0lhm+KH
	d+piGauaDDJK8XA9vXHSxZKneSICqzIQbxwVGGAcSI68ortThbVSl5m1CcpY=
X-Received: by 2002:a05:6a00:2e24:b0:823:5745:cfd8 with SMTP id d2e1a72fcca58-8274dbf36f4mr11656342b3a.32.1772448573992;
        Mon, 02 Mar 2026 02:49:33 -0800 (PST)
X-Received: by 2002:a05:6a00:2e24:b0:823:5745:cfd8 with SMTP id d2e1a72fcca58-8274dbf36f4mr11656316b3a.32.1772448573468;
        Mon, 02 Mar 2026 02:49:33 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a054b49sm12225956b3a.53.2026.03.02.02.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:49:33 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v7 0/3] Enable ICE clock scaling
Date: Mon, 02 Mar 2026 16:19:12 +0530
Message-Id: <20260302-enable-ufs-ice-clock-scaling-v7-0-669b96ecadd8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAChrpWkC/4XQz04DIRAG8FdpOEvD8K/Qk+9hPMAwtMTtri52o
 2n23aU1ph5c90LyEfKbb7iwSmOhyvabCxtpKrUMfQu7hw3DY+gPxEtqmUkhDYAUnPoQO+LnXHl
 B4tgN+MIrhq70Bx6FVRiyIps9a8TrSLl83Pin55aPpb4P4+dt2gTX229YCPgfnoC30eiNBSui9
 fZxqHX7dg4dDqfTth3s6k/yboJcM2UzrcW4k947oWHBVD+mFSDViqmamURyRskQk3cLpv5tuhV
 TN/P6UAO5jLS0u7mZijC6JBy3GiPXmYBHiolDa5TQBGdDXgDsvZQEv1LKtlICjdTtp3dJmz/Me
 Z6/AC0PwzlgAgAA
X-Change-ID: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9
To: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: opgCJSfz6TuU-1Frz8p05bkK7otXr7g3
X-Proofpoint-ORIG-GUID: opgCJSfz6TuU-1Frz8p05bkK7otXr7g3
X-Authority-Analysis: v=2.4 cv=Hpp72kTS c=1 sm=1 tr=0 ts=69a56b3e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=VwQbUJbxAAAA:8 a=FNyBlpCuAAAA:8 a=EUspDBNiAAAA:8 a=-lrO7XeYbFCEYaIRUPEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=RlW-AWeGUCXs_Nkyno-6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDA4OSBTYWx0ZWRfXyMHxqMKGMuCa
 fHPnTJolBHDvSC7XQPCp2lvEWrtPSJheVjj3MHnrFEXn0BmpobpUToOzDP0iuh+nAtbnj73jfdg
 UR/r+mConKcwFsx4LdY2mOSmUpmfuAZ/Wmd/kSk0RGRju2sD14z5CoLIOTRd313x9Dig+smlM0V
 vk8yQG4ctPz0COIkYQD0uj9dDrG53KcLaSb/fWkIx5mBoRc4jlzwp0/QZqqd5uoDQD+GYb5hnAW
 MGcwAth7lPyM3Z4Kpiz6PflTSeRgQIKW6fhE7H/Vgm8r1YoIuFK7CYgUxCVluo6KxKnJXerypss
 H+0AKtgrkObwN+E6nvg59hmTxWy7X5cJIZE9miVONaccb9TY8GWsm09T3KLOuksy9cT0EYl5+uc
 WoQ3ZLytsS3aozSdRK3mqz0mvn/Bdcml1xuBV8J9UHTmtvI2NZP46fg3vGeYrmRzCw/hWAn2SE4
 ELfm+LZuZbmSjaRoIaQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 impostorscore=0 phishscore=0
 priorityscore=1501 adultscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603020089
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269904-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AD75E1D6CFE
X-Rspamd-Action: no action

Introduce support for dynamic clock scaling of the ICE (Inline Crypto Engine)
using the OPP framework. During ICE device probe, the driver now attempts to
parse an optional OPP table from the ICE-specific device tree node for
DVFS-aware operations. API qcom_ice_scale_clk is exposed by ICE driver
and is invoked by UFS host controller driver in response to clock scaling
requests, ensuring coordination between ICE and host controller.

For MMC controllers that do not support clock scaling, the ICE clock frequency
is kept aligned with the MMC controller’s clock rate (TURBO) to ensure
consistent operation.

Dynamic clock scaling based on OPP tables enables better power-performance
trade-offs. By adjusting ICE clock frequencies according to workload and power
constraints, the system can achieve higher throughput when needed and
reduce power consumption during idle or low-load conditions.

The OPP table remains optional, absence of the table will not cause
probe failure. However, in the absence of an OPP table, ICE clocks will
remain at their default rates, which may limit performance under
high-load scenarios or prevent performance optimizations during idle periods.

Merge Order and Dependencies
============================

Patch 1/4 (dt-bindings) from the previous series
(https://lore.kernel.org/all/aaKt9PET6lVkBcif@gondor.apana.org.au/) has already
been applied. This v7 series therefore includes only the ICE driver and
UFS driver changes (previously patches 2–4).

Patch 1 is the change which should be merged first.

Patch 2 is dependent on patch 1 for the qcom_ice_scale_clk API to be available.
Patch 3 is dependent on patch 1 for opp-table parsing to be enabled in the
ICE driver.

Patch 2 and patch 3 are *not* dependent on each other. Once patch 1 is
merged, patch (2,3) can be applied independently by their respective
maintainers.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
Changes in v7:
- Replace the custom rounding flags with 'bool round_ceil' as suggested.
- Update the dev_info log-line.
- Dropped dt-bindings patch (already applied by in previous patchseries).
- Add merge order and dependencies as suggested.
- Link to v6: https://lore.kernel.org/r/20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com

Changes in v6:
- Remove scale_up parameter from qcom_ice_scale_clk API.
- Remove having max_freq and min_freq as the checks for overclocking and underclocking is no-longer needed.
- UFS driver passes rounding flags depending on scale_up value.
- Ensure UFS driver does not fail devfreq requests if ICE OPP is not supported.
- Link to v5: https://lore.kernel.org/r/3ecb8d08-64cb-4fe1-bebd-1532dc5a86af@oss.qualcomm.com

Changes in v5:
- Update operating-points-v2 property in dtbindings as suggested.
- Fix comment styles.
- Add argument in qcom_ice_create to distinguish between legacy bindings and newer bindings.
- Ensure to drop votes in suspend and enable the last vote in resume.
- Link to v4: https://lore.kernel.org/r/20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com

Changes in v4:
- Enable multiple frequency scaling based OPP-entries as suggested in v3 patchset.
- Include bindings change: https://lore.kernel.org/all/20260123-add-operating-points-v2-property-for-qcom-ice-bindings-v1-1-2155f7aacc28@oss.qualcomm.com/.
- Link to v3: https://lore.kernel.org/r/20260123-enable-ufs-ice-clock-scaling-v3-0-d0d8532abd98@oss.qualcomm.com

Changes in v3:
- Avoid clock scaling in case of legacy bindings as suggested.
- Use of_device_is_compatible to distinguish between legacy and non-legacy bindings.
- Link to v2: https://lore.kernel.org/r/20251121-enable-ufs-ice-clock-scaling-v2-0-66cb72998041@oss.qualcomm.com

Changes in v2:
- Use OPP-table instead of freq-table-hz for clock scaling.
- Enable clock scaling for legacy targets as well, by fetching frequencies from storage opp-table.
- Introduce has_opp variable in qcom_ice structure to keep track, if ICE instance has dedicated OPP-table registered.
- Combined the changes for patch-series <20251001-set-ice-clock-to-turbo-v1-1-7b802cf61dda@oss.qualcomm.com> as suggested.
- Link to v1: https://lore.kernel.org/r/20251001-enable-ufs-ice-clock-scaling-v1-0-ec956160b696@oss.qualcomm.com

---
Abhinaba Rakshit (3):
      soc: qcom: ice: Add OPP-based clock scaling support for ICE
      ufs: host: Add ICE clock scaling during UFS clock changes
      soc: qcom: ice: Set ICE clk to TURBO on probe

 drivers/soc/qcom/ice.c      | 89 +++++++++++++++++++++++++++++++++++++++++++--
 drivers/ufs/host/ufs-qcom.c | 19 +++++++++-
 include/soc/qcom/ice.h      |  2 +
 3 files changed, 106 insertions(+), 4 deletions(-)
---
base-commit: fe4d0dea039f2befb93f27569593ec209843b0f5
change-id: 20251120-enable-ufs-ice-clock-scaling-b063caf3e6f9

Best regards,
-- 
Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>


