Return-Path: <devicetree+bounces-317262-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HQpDDvHMQmqrCgoAu9opvQ
	(envelope-from <devicetree+bounces-317262-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 21:52:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4996DE800
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 21:52:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=oxS6m1ud;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=DdolsNgE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317262-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317262-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DADA3016BAE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 19:52:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE64131F9AB;
	Mon, 29 Jun 2026 19:52:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4655279DB1
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 19:52:12 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782762734; cv=none; b=YeLWFdB58mqo8lgsZox7+95INX28lXsUpYozXRZ0LiXo0XPaWLr51N6Y94ZQ69IYJ/snfjvZ4UgIAE0dQ6uyU0uePXHajfXWfjDCf1HU85YYlERThZTelGSvFmUTmbD+UYH32S8cG5er12gxNSsdc76L9YT9bl/7EGfXAZoj1SA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782762734; c=relaxed/simple;
	bh=jwWGuiw3QNOOc8+7UuS4DFRow4gvfUEqaIQPPEv+/JI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=mbhKYcCskA71D/dGk0TsSLvTSdwI5cF+iWSxVbXoDWC6UwRiiQO1vgHMFzqu3K4af/fZ82SVgnCBX/dewcz1tA1GsAFeVRGTYrjgBm8LzGkeHeel+IuqZsaeZRhxw2Sq35rSExwlxm6t0oH0J7IBacn2sKmOLm7p7jtQgQB4MDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oxS6m1ud; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DdolsNgE; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65TGJnbN3448105
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 19:52:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=jzAMeYuDqDsgLfXppsKUFN
	aGZ7zLI+C/WLqo7NaMSSo=; b=oxS6m1udt4eS5V+p09Gnzbo4O7JjTsXZfjNwgt
	IORRq29xPew9dzi7Xhc+INuYX2nk5Y7V0S/E+4YJu7Gz7KOTcecIJftFJlBqNbN8
	lZVW1DG2t+TkKxk+b4VkUCDJZN8xeJ1faI+ErMVSnKW0GFBuwtjeya3tFDO1d0vo
	xJmOJHh+VFpBeEPQkLqQLI74bVHUEMdTp/NF+1jQM93LInaZrlOJfKZIujlSJdwS
	LtdbUVK/4O63hbzhB9VUEj0ETthrEQEbMK4sZA0YcRvJt17kL0Y+SUXggcXBUsuZ
	T9RpVHKLWzJFTy7nzcWCg6gLDHK0Z+r8/xOLixci43GJd5Cg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f3qhaa9hq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 19:52:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e606e8f3eso84956485a.3
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 12:52:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782762731; x=1783367531; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jzAMeYuDqDsgLfXppsKUFNaGZ7zLI+C/WLqo7NaMSSo=;
        b=DdolsNgE5aXMJ+F9Gn21XlEcoHsLIzNDbFkjXIlHDY9e9r4EPno100nT+CDsAVVgNY
         LKLlPee5XACfnA9BKcbv7vYSDX0WFDlx8QnMORDu9GmZdS2GRAzzVJoI+0BP1QEFwRd/
         xMmMPZTV0dTwPkxLzgzBgeoSorEFxlpl+LXlrst4ceqHgRj3NYyRLc448ldoCynG2tGN
         qdmT9skyg2etYTlV4g1jwWi9iwRlTqGpkArio7eI33X79BTONG/n156u+TvPPGnaCqN/
         XYiF+CCjRUsqpZAPVaxOUdmRTyZ6oaAQ/rPtBKtYzoZKnFhPP8i/Lc9eyrjrf292up0T
         +Feg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782762731; x=1783367531;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jzAMeYuDqDsgLfXppsKUFNaGZ7zLI+C/WLqo7NaMSSo=;
        b=BgeR52kqtAopWUhWq7whRBMfsmt64RFk6+V9sescppPXNdUrAboJxGXWXnnXntm9Kj
         gMJDEMtOgQ6lNnVlM/0J1XuSOf9xx7luYJ6xZM3DuQPV+2mZnQNFgKqc0A41Jq1twOTu
         CEVCMGgZH0GkpnP8PkVjI1HfXcfOTqbCrMp8+pDVflNJQ2gLHjw6rP134QSKYLabnEsg
         6DFrfWGGZjLWQoR+9aP5527MSQMXHts5Fi5W5fvs1UMPT7ifJWcfEZZXBghNGwItlRW/
         qzOmrM6cEkyZQeSffJ+gYxgJA0LLqW2QR4zOTvdbRcF1FItdcuTPHtdv0FDuOqQFRsmv
         YAPg==
X-Forwarded-Encrypted: i=1; AFNElJ/BCfNAxCs+qcx8/oLFN50dz6HCXRc0OqZ/cS3z0XhVyCDPzRndRTHHPSQw9uXNNoP8SY4d58kCioXk@vger.kernel.org
X-Gm-Message-State: AOJu0YwBHLpIjsmCKRoEVLi+a+Bcb6Ejhx4QI+QsqHJE70Rp0cqcrtWv
	SRgaNv0b7mrCWQAkdUZwaHH/Rglpdhr6bRdnylZ/dejhbw5fEYLceUKKfoEqTrRq5eKQEZh0aks
	yjNaNvch/LawkF3O0X7hlOASk/Xc049xQPdva71dN7vc1BC6h83Zi/xC2VAL2RlFc
X-Gm-Gg: AfdE7cmrRsOTo9TWfME6XDhNpKYD5mV2jmyH5uUwrjJ13i7FH9Zb09W+82qIplUZRfM
	8ZYt5XpzaOKruVRqsc3Om7tggu0ZoX/FwO2K15K1wreJROKC29KUHOC3cKFMqTeO0iloIvHtQBx
	ej1JP6YLmBRDkhitod8I5NHPNByzXMoORHmyoXW0wbhbIPRj7DQw2Bh74i2BkllOU8MyR4A/8wb
	pzBcwzZnQePdLbM0KldYGds4Ik7+LFhiU49El+VCO1aYSpSFO9pwr1Fcd+NRvLkpXG2uv4fetjQ
	EgcTzCiUOaz/gB2OqAjzzAk0zqSEfKN90GAfoiKP1qg8WVUleUTdSJDnMasTMzwydTSZi7HM97e
	fwho0wSiyG+y8mFXJx1qxy0bhHHdWxGlp2ZH/6Gg0wGMiECR78mSkNPQNUoAvO2sHjwLiLdTjLK
	qIa5OwgdEF67J3OffuczYLvLq+euv42rRCFHpsxQAfAvP7OBb1xYogiFytXsMS+ngKfI2s+t5eB
	yNOAeR+4MGGCMTJnbRG
X-Received: by 2002:a05:620a:1a09:b0:92e:5856:bdcd with SMTP id af79cd13be357-92e6287e359mr155316285a.53.1782762730868;
        Mon, 29 Jun 2026 12:52:10 -0700 (PDT)
X-Received: by 2002:a05:620a:1a09:b0:92e:5856:bdcd with SMTP id af79cd13be357-92e6287e359mr155307785a.53.1782762729850;
        Mon, 29 Jun 2026 12:52:09 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com (82-64-236-198.subs.proxad.net. [82.64.236.198])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493b8d99565sm6360005e9.0.2026.06.29.12.52.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 12:52:09 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 0/3] leds: pca963x: Add multicolor support and enable Monza
 RGB LEDs
Date: Mon, 29 Jun 2026 21:52:06 +0200
Message-Id: <20260629-monza-leds-v1-0-0cf7c0a7dc14@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAObMQmoC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDMyNL3dz8vKpE3ZzUlGLdZCNLo1Qzi2TLRBNLJaCGgqLUtMwKsGHRsbW
 1AFdMQEdcAAAA
X-Change-ID: 20260629-monza-leds-c292e68c9a49
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: TANj4VC_Vp1wo4SwBtpjYEkWN61wFNfT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjI5MDE2NiBTYWx0ZWRfX/Z4FULj4T2UG
 kcigQPcDTFZvrJJtTs413veIq3GzOXmNsOrEzyHuGNbxHRixYH7CxbjTrjz3MwPp7hbWp65vpAQ
 pq+eSuLh2mnXPdJGZvJI98Kt/gvToymJ3QN+IV0i36FJ6fn/0Pp5b04CWIS6VS5kKgvQFrdT8DK
 aAxx6p5FNIUK5nNdxphmrYfVdhRXqyMEluuOnMIl9CDDD/Ij5G847Cg2HWSjXrtbBb0Q4gh7Wx1
 k4PRkempTRtOb84ONfmzAfQjL6bVdTZO5K86hplcbdzXGmVI+bxnRpTrJVgxVHLIpeeQZ6bVjyD
 9IxN64wN0MDokgMyDhHnZgiW0Y4ZLr1JtJuCJcHK2GXUSVFWkfdieKOx6mcBMqJafbwG/acSWVV
 wsuP34s0Rm8bD85cVmJspayGN00H0gYsBzPphtBpgoUg2wtnAojWrDOOueHvgQfQL8YIVWe9pMS
 N0d92zygbdEZTb9enLA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjI5MDE2NiBTYWx0ZWRfX6akdZU+wDO8w
 zMp5Pc28zhiiDAidorJhnwRKLyXCWgMqRxhGpqehrqRDsn5h3PvWzzQAR21YUtpXqGm5jKfW5sI
 2lce08TyAc9aUWXoigm1NtS83xdVPto=
X-Authority-Analysis: v=2.4 cv=O9UJeh9W c=1 sm=1 tr=0 ts=6a42cceb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=MDeckJw97qnk8wCBExTehA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=_-IZY4xtMCx_iijEg8sA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: TANj4VC_Vp1wo4SwBtpjYEkWN61wFNfT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-29_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2606290166
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317262-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:pavel@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:laurent.pinchart@ideasonboard.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:linux-leds@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:loic.poulain@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9B4996DE800

Some devices use PCA963x controllers to drive RGB LEDs, where
multiple PWM channels correspond to a single logical LED. Add
support for grouping such channels into a multicolor LED device,
using the LED multicolor class framework.

The DT bindings are extended to describe these groupings via a
multi-led@N node with sub-nodes representing individual color
channels. This follows conventions used by other multicolor LED
drivers, while maintaining full backward compatibility with
existing single-color LED definitions.

The PCA963x driver is updated accordingly to detect these grouped
definitions and register multicolor LEDs.

Finally, the Monaco Arduino Monza device tree is updated to expose
the onboard MCU-controlled LEDs (compatible with PCA9635). The MCU
manages four RGB LEDs mapped to channels 0–11, which are described
using the new multicolor bindings.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
Loic Poulain (3):
      dt-bindings: leds: nxp,pca963x: add multicolor LED support
      leds: pca963x: add multicolor LED class support
      arm64: dts: monaco-arduino-monza: microcontroller LEDs

 .../devicetree/bindings/leds/nxp,pca963x.yaml      |  83 +++++++++++++-
 arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts  | 110 ++++++++++++++++++
 drivers/leds/Kconfig                               |   1 +
 drivers/leds/leds-pca963x.c                        | 126 ++++++++++++++++++---
 4 files changed, 301 insertions(+), 19 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260629-monza-leds-c292e68c9a49

Best regards,
-- 
Loic Poulain <loic.poulain@oss.qualcomm.com>


