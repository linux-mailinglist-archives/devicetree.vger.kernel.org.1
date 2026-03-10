Return-Path: <devicetree+bounces-273524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJ/2Ih0msGnYgQIAu9opvQ
	(envelope-from <devicetree+bounces-273524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:09:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C79282516CF
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:09:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5B8E03180128
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:18:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53C0E3B47F2;
	Tue, 10 Mar 2026 13:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ou4i3tb+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KkQHayCb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5243B47D7
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147831; cv=none; b=gznkpcefMAJCfawtaUUqoFxME3bx1bGDU8FQqgkOnTgPuS3FWQF19IlkeDR/bsIZ4yJ4f69g+mqrdRQ2SyKCBjEDjVZbkYAeuJEYk+d4pkGwNPN66+ifPODcTjgkOxeS2KJLGgUbkpzlzM8yGvrpHejuDo1V8nfWc27XpAN9VHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147831; c=relaxed/simple;
	bh=sH+t7QdCAhh96AgKgYvKXtv9fFK4HScdjKBh1YOH27Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HlMQZlX+XL2eaKavIwqUEZzcNs9TuVcvZ6JsSLy6RGwu2GdX+gCm6SKGap8thqb7bHyx8Kd8d9oPlnX8JcRkL7VqVpck4/MjhB6L+gQuqogF/DCctJ9yCmmag0nM93RTl7P6T6GN+simyG8WwPlznNKxELHsvqlZXz5BCzWlp3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ou4i3tb+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KkQHayCb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACabQE3772209
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KCWMYVLp6GgMxe7/hfQssgS7v472KOboiLdY+/gjEuw=; b=ou4i3tb+Gb0RaadF
	18uh4yHpAmYo6QX9xMf19JalrrcNrI7jYF49hE8hgX/fVRL2UPtvoOltb5nMrYqQ
	NMj0ue8mcrM0t0KaynEoWyhXrEwBv9gFgBgP0qmtYppAYKglg0izgdQ76e6Gksj3
	O6CHsULNmOLW6glu6AmfQpouZTBYcixZF0R7OVemEoiHxXJi45ZVwuLxfhB51udj
	LsK6ovoWH7EAkGmjeA9a6V64XB/AD6+F+OAyFJnI/8D/pKyNdh+/+0RhJgy+ZUns
	j97/L5UaK9nc38tNlgodq9HW2JvCq7R1H66kdGhdzTp9OIfkGDkYRPPt7WOtZ1U6
	3OwHqw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctfcj15bu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:48 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5ffbe27449cso34926682137.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773147828; x=1773752628; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KCWMYVLp6GgMxe7/hfQssgS7v472KOboiLdY+/gjEuw=;
        b=KkQHayCbxTXPD7yzjRBa0I3lQ59eoMR+n81riLzazn0uS8g29Iq3BlENGfASYBnkB0
         Lv5hQyAtFVJOV6ERhD8pTXvG5e2NhBCCb4e3Z4A1d9YdRwuzG8SMy2WjyhjVTwik/TCk
         ClSy66YMJS2h1ASH7w5Ans9Ry066XqpJfoUzSUa55n+l8FuQ+WlE2/Ykrky8AAEKCjOP
         TP3s306HWr54EYVYeJJpvUgWvHBCsuhhxogWSBpmy/HzqwPYfWdOzic3STBc57QFZyTi
         PpOABHa6fIDl/UZYc/+M7xjB6nDj+cWl5kZ8ls1vEPu7sOlRBf+sQlyjLhF+KDqjlL6v
         cfew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147828; x=1773752628;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KCWMYVLp6GgMxe7/hfQssgS7v472KOboiLdY+/gjEuw=;
        b=VmdyI6fX4zuNiZpd/xfMaGPPboWn4y8y/kGHlIyMaQ7cdi3u5b1493z+wOOvFechh3
         CmenMkE4OyXAUKdBJ/RavLcjeuaWeuFe2HbDyO3sYMmIIMA+QZYqgQuqONnf2FIm4M5B
         HtVi8NAUP1BYqk+Ge0qRiT6JjrS2sRYK7qqmbGZW+uVw3pBZC42zA9rOf7ePjc7J4ZlC
         sM2eE0APOoL3gCAV3MU5PkiioN74szpPYsYaQlL12miTk1a/7OVr3Bc+oD1B/YwAWR6w
         h9e9dLy6zAlku78V/CN08C6ZWdStlF2cRLYZXMvXujgVzEo0GtME3ABVksNm/Y/XvZqA
         hTYw==
X-Forwarded-Encrypted: i=1; AJvYcCVRId6bdrgCgYjQMx0aIEtxH82gTttxgpLr69xvpCbcYLFXyqfIZ2QQ+tNKUas3TrO7ywpiMT7RNQtV@vger.kernel.org
X-Gm-Message-State: AOJu0YyjBaQouRSdXNZ7LR9ZaWW01uDLNOp9ox0sWcowsipf/0Bu62JB
	e1zRxF2r0m+tHjt/HPpBCKUlPMBjI1mIRNkxm0JHErHsw1yjKdxrW+mRxyE34JCH41Uk2tqHPtd
	KjcqNWZWAo18r9RF1uqJV2nR5XWkwXkIzYF4QUj6ZgtGnDJkwMOS+MeAtJgBRtekO
X-Gm-Gg: ATEYQzwUiqMlLAy7RIz30OTqJPIrBx7Lh2GecAoNroj1+rbVU+XFK0xSR7w79eWeja3
	MYWsK+eWexePYxDLy6pfvIGL/dNyZW6g24qjhFworETrAMoQWA7eQbetAJvrQ7ENSSGLkeLntxH
	LRX1oTomC3AEBryNGU3R0FbTJTCSKuODJPG1doN77AmWrUffRVPERq6dFssvVXpL/r1yrsFXlf7
	ZwILn/0w90YRZDJYNfxHODM0GR0pZg9yCZWJTwvbVWUKsZ/Kz2fkuJZDvuQc9JNhA1F7TRKHb0N
	xLCX8IxZ4i8qf0+Rbitu56uF32p6Day9N0PlXxnWBLnukTvW6sVjI8nSxdc8mcAicBtlUE7kcba
	5MWIBacXFOZP8uaDiMbvxCb9jFSUtbxxsPsleoiaTzADF
X-Received: by 2002:a05:6102:2acc:b0:5ff:c40b:27eb with SMTP id ada2fe7eead31-6003a2c1f1fmr1358918137.3.1773147828363;
        Tue, 10 Mar 2026 06:03:48 -0700 (PDT)
X-Received: by 2002:a05:6102:2acc:b0:5ff:c40b:27eb with SMTP id ada2fe7eead31-6003a2c1f1fmr1358873137.3.1773147827906;
        Tue, 10 Mar 2026 06:03:47 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ed174sm178732855e9.5.2026.03.10.06.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:03:46 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:03:23 +0100
Subject: [PATCH RESEND 5/5] arm64: dts: qcom: sm8650: Drop redundant VSYNC
 pin state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-redundant-pins-v1-5-98e2ef430717@oss.qualcomm.com>
References: <20260310-qcom-dts-redundant-pins-v1-0-98e2ef430717@oss.qualcomm.com>
In-Reply-To: <20260310-qcom-dts-redundant-pins-v1-0-98e2ef430717@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2576;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=sH+t7QdCAhh96AgKgYvKXtv9fFK4HScdjKBh1YOH27Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBafWvFmLawGPyGsVrxoR8GZSRg6oQ1UpZAE2
 66+uLgXIS+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAWnwAKCRDBN2bmhouD
 18HmD/wOsmO8WCVZO+xCYL/YKTaS5iz2PpkZ/5odjElUFKgQgY3v5YlTohBGReJSjLD7QzoY1Ep
 RqBjpXGKVZFf0r7HB1GxKJgq0zoe6aYHmQ9rcGPzNBR/P/09M7rPDFkgqcxJOImo4u1bG+CyAxB
 MKeAoZITpIK9MmrcYYjmGJ9TK+e5TGkXXSZOtih6dMKWZkA3KOS8KgfjaD6/+rCJZ/ellzn1n/+
 PZfvUJepSEmGgGQ6ikQKKa6MO/P/rFqLvAixQ6P7qNxsw8WTVU9+nDBxxepU3iJ6B/HQKBKykf7
 ZpZrigfaYneYtBMIo2Ox0MQcdjTCto5XGsjBPD4qxugtDOC2Qsz2qtbe0dv93g4RatywTOtzOfH
 bWDcpiuROC67Xmcw8ItABEDZQD/CGt0SE22SRk5b3lKk4bqw+n8a8b4mdlcKXpOMvVCi5/SIswW
 rBI6Ahsm/FWFpf7h2mbFz+S+sITYtyer+ScQcl0f6AXpvTQWpMv+F+kuvYFadJE5JIFAl0X7rIf
 QxX6Fh+xLWGBKiGHnt/yCRCpJUmobgsDrrrth/DERK/FiRSexHcKt3SSXMItgZ61mnZC+/HuUvR
 fgD5/jZxixAgkoR445oU8MjXLs9ATGWa8gw92I3yavE5SpxPCb+APyWG3XPuwzJgZ4d9McJvxXS
 je0DAjvI4XYXXeA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=H7fWAuYi c=1 sm=1 tr=0 ts=69b016b4 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=kJUOvC4QKfPL0WEIkKwA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: j_jikfT62jEvjuA8ae8tEx8i6Blz45gx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX2GQDg4INGx/a
 oyi4M+EvSYjxOFMGbkJ0PnMtPPsHMcTGD9VBhw1/4RDrfyqkbAQ5yc6b/zPhqUYt9DNdRBLvKvk
 NKcvb2r+4XfRDC5DVCsO8sHiy5No8Jds6boyX9PEvBa86PhT/9pu8/bhOx9QvP8Q/bcDbSzs350
 HNIUDy/6oDGfGNbmWPg9VZJPAmYRVstw5Oymm5zNK6/nVHv6r/In5m27wDtU/KD/BbEW0Du1yGA
 6XhFEJAZPwmecswTkgHxVAP0KgFARz/z5R2wVD9XsxG8L8y3zdeKpIjf45AvU6R3UyRXeQp1Bd8
 Ocil1S7QFfp8AyXyseOtUelBUlbcvnTAJTq8m5U/9bC/bY++SgvhHzQicxGHK0iHKXpuEk2YQvg
 /uJqweXvo4rYLOVMOWLznWXUp5TGnKhzvY/Y85S6/dcY2gvgP8slrTNGCIINVaJ0I0IET35nBro
 7GXLNDNa5bYYa3ciBhw==
X-Proofpoint-ORIG-GUID: j_jikfT62jEvjuA8ae8tEx8i6Blz45gx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: C79282516CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273524-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts | 13 +++----------
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 13 +++----------
 2 files changed, 6 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
index bb688a5d21c2..dd6e33d2dc5d 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-mtp.dts
@@ -618,8 +618,8 @@ panel@0 {
 		vci-supply = <&vreg_l13b_3p0>;
 		vdd-supply = <&vreg_l11b_1p2>;
 
-		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync_active>;
-		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync_suspend>;
+		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync>;
 		pinctrl-names = "default", "sleep";
 
 		port {
@@ -821,14 +821,7 @@ disp0_reset_n_suspend: disp0-reset-n-suspend-state {
 		bias-pull-down;
 	};
 
-	mdp_vsync_active: mdp-vsync-active-state {
-		pins = "gpio86";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdp_vsync_suspend: mdp-vsync-suspend-state {
+	mdp_vsync: mdp-vsync-state {
 		pins = "gpio86";
 		function = "mdp_vsync";
 		drive-strength = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
index 087828c60692..a3982ae22929 100644
--- a/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8650-qrd.dts
@@ -908,8 +908,8 @@ panel@0 {
 		vci-supply = <&vreg_l13b_3p0>;
 		vdd-supply = <&vreg_l11b_1p2>;
 
-		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync_active>;
-		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync_suspend>;
+		pinctrl-0 = <&disp0_reset_n_active>, <&mdp_vsync>;
+		pinctrl-1 = <&disp0_reset_n_suspend>, <&mdp_vsync>;
 		pinctrl-names = "default", "sleep";
 
 		port {
@@ -1244,14 +1244,7 @@ disp0_reset_n_suspend: disp0-reset-n-suspend-state {
 		bias-pull-down;
 	};
 
-	mdp_vsync_active: mdp-vsync-active-state {
-		pins = "gpio86";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdp_vsync_suspend: mdp-vsync-suspend-state {
+	mdp_vsync: mdp-vsync-state {
 		pins = "gpio86";
 		function = "mdp_vsync";
 		drive-strength = <2>;

-- 
2.51.0


