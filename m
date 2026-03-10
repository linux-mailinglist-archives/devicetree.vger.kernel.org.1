Return-Path: <devicetree+bounces-273525-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QGVrCDkhsGmCgAIAu9opvQ
	(envelope-from <devicetree+bounces-273525-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C4519250D33
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2066531313F2
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C96AF3B6BEE;
	Tue, 10 Mar 2026 13:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m/24VhRZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W108tt66"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDAC3B637F
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147835; cv=none; b=AT4bXWwJ+DvFGQPVq1nYQTZy8Hts4Mx/HfTWu7JRWrfGBRpfsoPEBHoJBW3Tak2yNcaB4bZt2KphmEn8LfLyMjgNIvgreg86Nujg6cAg7Lk4NYntqyySE3rU59BxBDbjcZEgxM/Mt5SAknrvYSk5V1C86DYRlx9vWBpfvR0jt6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147835; c=relaxed/simple;
	bh=MYLL7P3VW1BtPa4BVkJEX2bGYGDc0D7jUh5YCqK9LJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eNb114MTaDthqUxR6Kv+pMGNkY0rN0bKrl/kek59EgUzx4q5jkdYJNrJac9M+km1pmdaFkbJUv4Ri7PuK5aiIwr1Wajg18VZz56If3YH5ZDq64e7fNVxXv/A/kJ0JfOUubUTQvt+eUnyx+QFoUoVP73iF0CCYA9UmTAl/7ST1IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m/24VhRZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W108tt66; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACnwsD3894073
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K/7FtcG7/0oun4bXTNqCEdR1rod0NPsbu/0JASEiqpA=; b=m/24VhRZ3yTZR/Lp
	4qUPpR4CDP5m/9QLr7R1oRW7+2q7GGArRte4jIiwUQiJEOSMYKD2tO6+Cks5w0B0
	+rc0ftQdpRp7fae1E9igft0OEm5AOq0CBUgBYBxhLa1UIH0BkqV5lYhvWW6hnkzj
	faFO3Mlg0d/fKeFGFI3TPKQgqXHE1ZK6oDKsRylcKSCuc8h9TI2nyOu59MT9Pr7r
	5IMWkNjiLZ/A0BfQkb7SNAZP9W1RcPqq9vWCcxkQmlleDSS+M5klFZHjPjIL8iJo
	8dmdvf67TQJmoN5vQil/02M6ZRCcH9zQqzWCKqFS7FfNRnkjaNuBBLZuyiojYsu3
	j65vpQ==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctkmyr1sc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:53 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-40ed781f705so55152459fac.0
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773147832; x=1773752632; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K/7FtcG7/0oun4bXTNqCEdR1rod0NPsbu/0JASEiqpA=;
        b=W108tt66ApTsm06mczahaXMRlVd4is7b5m6TVgXL7yyqRKgMHOnqmIrnltm4vRkQ7W
         X+LAd96taZ5YaAslYtRApuJcSbK5ubSx/yZrWw80xih1+rNTAO15coEWS8ZotLmY8FUc
         TC1oZeZmZ6aJfYSM0kreCC5mnb5A/HAS5gug4qRBbUIleKudkHSpnMCvWTQDsYBUftQn
         Ow0tgV8DGtpXts6akIA8/ng1/+BeGmPLj7BG0463v1khRiuXldaSRUlNmwDNhISBJG7z
         G2ie8cJzMfmj3tiBh3MmTg95T4L9tSzG5GCOHSFa1ovkcxptHKhkSbWKZCZvPyqK32w/
         zx7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147832; x=1773752632;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=K/7FtcG7/0oun4bXTNqCEdR1rod0NPsbu/0JASEiqpA=;
        b=kxp7X0mlA/Oz2SZe4RsbHT8xjLupN/m241VXxSNX6r3WDu0XWH/cVSFyT8ryugU1VT
         y+MxtnxzWRcOmWZabOaR2uDJh+btBv1g4VQYeGt212vGerZheQjI71QBQqgMOu1elane
         /wJ3ayux2Q1mgLBd1VbkZAYOfC4J1lWck+qEF6aBokA05NxFRmdF3yjOxv8F7pGM37dp
         RbnJkw3CJI1nFJgoPtqzKcbW//9b/ADAM6hzrHi27vt10bZEa1nvSTh0zutLaegobsYH
         thBH/GiOJUXpznWsMtrl7lH41kFlKbmarczQH+BMS0zATokf+dn/W6yDwmpFJuseornB
         Tcwg==
X-Forwarded-Encrypted: i=1; AJvYcCVzkH6WBmsY7h0hEX21Di7OpfjzoPkd8iohwlF/aPhL+iICGRmQ29QKMYFCvv6CmPMiRuS1X7U5R/M1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywfa00SGt87SiI7g5Uc6DflrhlLmiQpyMQ7i5GUx6ClJ5LbvUZz
	r1mz4rIJOwuVcLEAlV7QWY/xfMEKYBGFGhZe+rnCi5ppP2QaGknnUJfh22rI0T72RwGQdZKyPuO
	OruSv3THEUGj9Qr9aHQ9CoupQ6yTMC6nnIyxaAF04OCzN2ZR7H0MPQHiym4vgJ3CtBQSnUB7Z
X-Gm-Gg: ATEYQzyQLmyMWpuhQLbMyXDGponSbyQWWtIsLXpeyYz7nQuFDUmMWhWjwph7WYGY+A/
	u0jf2qJIFRtqB4JH+yD19z1WERO/V6WiBV42HCdXrCl0UNRLaCpWzhCx07VaT21dv8nCYz6cUla
	9Z4rAyRQ8ukJgYy4BMQF4kPLR5YD81L8uCk5lsH94F3mgXoswGvB+haOPQC69svgzG9qHou/kzF
	KFmBUVepA64zDnaoUjdmntunZMXVmCloH7Rm5t035mIB4SWxbfYSdPQ6+1JgDMJjTMglRAl4Ymd
	G9+uGKLdcx/ir76Qir2kWGM1keVT1BF3B3XduG3Sm0RILDIzGWKJmv1QbLMHAoQ3E6A05FsllT1
	xgDbIXXzwww+nWH1aGp1mAynBoW/aZ6QVOSrAOPIwxF8V
X-Received: by 2002:a05:6870:17aa:b0:417:43d7:bb9f with SMTP id 586e51a60fabf-41743e7215fmr3254770fac.34.1773147831978;
        Tue, 10 Mar 2026 06:03:51 -0700 (PDT)
X-Received: by 2002:a05:6102:32c1:b0:5ff:a4e0:193d with SMTP id ada2fe7eead31-5ffe5ef4a95mr4996867137.2.1773147820828;
        Tue, 10 Mar 2026 06:03:40 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ed174sm178732855e9.5.2026.03.10.06.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:03:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:03:20 +0100
Subject: [PATCH RESEND 2/5] arm64: dts: qcom: msm8998: Drop redundant VSYNC
 pin state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-redundant-pins-v1-2-98e2ef430717@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1131;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=MYLL7P3VW1BtPa4BVkJEX2bGYGDc0D7jUh5YCqK9LJ0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBadRTyWwSwSHJoKGfqg5HIRUf+WgJ3Euk13j
 kQNYlS33zeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAWnQAKCRDBN2bmhouD
 19RjEACGU7hRt+oY+yvTBRPbebTGYLB31gxbL7De3tTRtJzAPlLg3NM6VVBPkNZg/DpEBALbUyM
 VfAcrTn0zb13v5bktUfk0swAdbWriwfImhHksKCJ4P9ZrIFYnacji/ydSata8l7ukYoieGSnUlp
 Y4r8CsZHhatq0pMFmHTruOtIJS7I5nWZ3aJ9nDiXQ2mtgF3gCuw/EqIQ+V4X6gLe7wSEWIjYwvp
 KtiacUogcPVATPH/6GU6fffZl8ZpDj/DTm+rgNPbHYFHCkyarf8K1ubwi3myWZC2uPkvkPvv2zp
 Lvq5pE81UrqCEJpvDRPnPseSiY458g+LjfNEJBQGpYWqVWdhcoR5sCVJiL5CqiiO6a27zxOGD1e
 nt/KS4M7d+mMVqpO9dUHzeOaEB2Qz2p1NqSfj5RbUgm5unnf6oxLO2z5lw5Yn/YNYuT5AcrQarg
 Y8MZ3Lu+y7mSAdqEuZcT57Z4SjOJemM6AT/rJ1Bde/sGMb0RK16/D72EMOilgI7i7sdko0k7mLv
 Io2uiFq6wQrbC+Xjf0s/QJBkJVR8ctRsZWiWtuc/j6qrPqa3uyGDLfILf5mtgY9rEGfjuW+MMei
 ydSkAFcIKKA9bIjJWNAcTHWD2axfhh/AVVYeATdCrmI2Aiq/xUUoJ3ZHdCNrEX8kknne6dafy97
 +y4/Kf/eW+bYcYg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=RYudyltv c=1 sm=1 tr=0 ts=69b016b9 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=YxqXGhGs6wwv8MBuWMEA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-GUID: 8JUNDSOW2mD0F4AjZRyavBvvvI1KkS6F
X-Proofpoint-ORIG-GUID: 8JUNDSOW2mD0F4AjZRyavBvvvI1KkS6F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfXwGSojgne52eV
 6CcBRbXn3C3t8fxQCA7crgEInzGkPT7t7rEIHsqGcyl2HtIVN+OVSbCmEJjQJY3ZsuNXnM9KmBN
 n24bqQhpP39hXwl2rSzi1kiQPl2J7/i7M+cgujv7wWfZXWgrMySeDXqSRqtVZHXVG801UFRBsG8
 sE+BiPlTqKHcULtnhhPCVDcEa78PWLCh0m4DdcDsaeEPDzSE+vd2Qj3JBM8HDgFIIT+sfnEQyPM
 rmRCqsTiCn9SoZSbG4PUjyg+G37xElID4CMkUEEdKmf81pnZtaKzy9zcDPfxGpY1J353/xvlhIx
 JjkEv3wJ6gL5QV3WeYKSnuyoxoTB/IVGEt2u4EFPTxB4CgiouHkf5NT77kgsuRIQ8fVjTVa0tE/
 CJwBLziO9SI6gBouqwFWJdRNDqQsUxOWktx2N7o+IcAlWzCZTEyZKLrrg+HwZNbDI1YiS9RonkL
 0xZnluz2s/2BA1eJQcA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: C4519250D33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273525-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
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
 arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
index 0cac06f25a77..30222f6608da 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
@@ -543,14 +543,7 @@ mdss_dsi_suspend_state: mdss-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	mdss_te_active_state: mdss-te-active-state {
-		pins = "gpio10";
-		function = "mdp_vsync_a";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	mdss_te_suspend_state: mdss-te-suspend-state {
+	mdss_te_state: mdss-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync_a";
 		drive-strength = <2>;

-- 
2.51.0


