Return-Path: <devicetree+bounces-266484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLYFLWD2lWkmXgIAu9opvQ
	(envelope-from <devicetree+bounces-266484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:26:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1473D15848F
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:26:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B182730125EA
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E01C34105C;
	Wed, 18 Feb 2026 17:24:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YTkb1qo2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LBgyrN7S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE2B2FF657
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435488; cv=none; b=IP7PtjFrjB0/Qq813VoQKDll/mudak0ioju3uYqlVsWr3XJt58MCkfmzCwYRSfWN+xrfiVmAe9VK0S30e4SgCGqlj11e/QcrDkej2NxQev/iMyIG6fC9ak9f4IgVXqUZhb03LzqLBfsZ2wrmitXF4PMe4CLCOV0UJf3nYZbIk8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435488; c=relaxed/simple;
	bh=MZS6+kfQDn3XnVGaMmoY2Vg/6DpKm3HfF39YP+7iMd8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MKuOyPP7hhgu/tSflZTmc2x+Yc2XrGT5S5ndaI16oWPq0K7+O8iTFAoK4IEagD3YRwUmr3sLdF842XYg8YfxYnw4KtIIGQx6/pcYwhJjIuC2aY0RqbLcorZRnEnmot3Pa5T7MwTvRdQiq10Gth676NJVdaM1B9CQF03AJML5jCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YTkb1qo2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LBgyrN7S; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61IDVwg81046695
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yk5NL3Dor4pgyCLFEkWip3Ik4KEfLeU9uRCAL4pRym0=; b=YTkb1qo2rK8maVrA
	U9DntdM/WtTefYsP0Lan1/nLpxjq+GpSUX+cIq8rnTVhQMs6b5q89Co5VCzCUUQ2
	P493F4zIMLlXVgX1Yo7WHlTCuw4SsgyRXAHp7RgfiOb0sY6pG6iljdI927XSPVbh
	WL0Tt/XkBjHH3nYVMGrh0VOAVsBJ8Susi4Gbi2HBXf5mi96TI3rKY5bUjHXYErSn
	pi09CIcHCCTxD6I0u+NwWzp/8QvMDjM/d39kjOQM2lk4Pj9eO/mMgouTtwfiNNhP
	ZAE2q/SHhMCE6ztphaiT/c0w5lWNmRXySKlcRUIoHj+92oeTo/3kj4ZzPFZfQfAs
	ce/+xA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cded00p5w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:24:40 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb5359e9d3so23494085a.2
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771435480; x=1772040280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yk5NL3Dor4pgyCLFEkWip3Ik4KEfLeU9uRCAL4pRym0=;
        b=LBgyrN7SZqH8LfvBqXqI6JoxZetqnTuzBDBB8GVzI9iOjbKTJ+gLS3vW6hFNi5so3T
         49jsRDFA8BBEI4UsIb0gbqcDnQAOQ4EVnbf80wLXW/Q42nnx4VhfyQWeDJz0Qi4/cC5w
         aM0ag77+QHxOZBY7BmMu4TrFrEpJuILvyPrKl0M0ls90d9Di4audIiRAaD1V8S9a81FV
         vxfDMVmt/PvCb1B5ZiMGUVDKA4lvwc2GVU/Z1htrHo3KAnmROd5KBJggjPOXc6tForX/
         bL6hn+kIYqpdRSLmCdCoceMr5wcToiWoN5JGolKwsGF4AsO83HYsQ8ZiVT8GB5gmfldi
         fIOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771435480; x=1772040280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yk5NL3Dor4pgyCLFEkWip3Ik4KEfLeU9uRCAL4pRym0=;
        b=hrhLA1i2A6QLRT6sOVHeAK97mAtgk/yGATbMQXFxpczILtXBASSiNpsJKMhc6l0Hbf
         JT5aQSD7gMRLeRq1KGefSuCNocUmQ9qBDTfya8CzKEj228Ol9okv7g9qd9KEvATUdhg8
         usKoHt+f1VGtzacv2Bn6bVZV++HU/pT0b2U8R3xGhi+ouD+QDCnsPQgIbpE2YMocLjfp
         ZsQrAgmyrBWna4OxmenJNDW/bQ1nR9+aBIQeVfkQl3QX2gVxGsZQHD581/+PdzQf04or
         h8CEVBVdzxooopxPYD7518ALX0JAYspUG4eTBlGf0Mu4deZUilERlLZoxYjb3vksSd7V
         RjEA==
X-Forwarded-Encrypted: i=1; AJvYcCWba3qsT/OV63Jm6kyKPuwOu2+NWwnsqojJZsqv9JH/orFHDV3nryT8PGXiRnUvID98kJvau8QKqyAR@vger.kernel.org
X-Gm-Message-State: AOJu0YzGtnWnblSl8TpxQejDCM01TUC/c+5cPEr83XYwDHah7govGPn/
	bDWvRaa4JhOhr/e3opfnLPbpeLw9bcA0FeMJvHSAEEyjcWcOIDI8ZIOlbRNAp0BUaqkzF5W66or
	Sht2NbnrLN1uimZDgueMqlWtWZ4HP6fvj71714SU290YchgYs+mPtVrp5i0WNE5KW
X-Gm-Gg: AZuq6aLXrHfSAjSYgMulKiC1uc5515cbX+Qi60fjRQuJvwrUEE/zUt7kWDV/jy8ss/n
	cpk5nKLUiwF2wcNPLZpGdttdwJLu6HSGf9L9t710CIOvgKxjmELAGDwvFgY0dRfWhAQQN+7cUPt
	1WJe49PZ98rQXRGhqcrIKQo9tUKMJ2z1A7YHd+GfPSFkNql5Gw32GSStQTlp3o2koq0TABvxECF
	9qu4OfyYESmUg+kEEpHlEU16GrSm6F4/iEusSwVVunfoOfqniszbJj430PyqYjZIg/enokgLN83
	Omzk9QIAmN/jcav5WTYlDsGGW6k4zC8JHl8PYcXb6DpWR8pk6jHUJK9XijdBEbJPOUyEw1S+7Dr
	nWphfN3cGlqjSnK3/E93pgwC3SL5HSEjIxlByaiWsQ6ph8g==
X-Received: by 2002:a05:620a:4724:b0:8ca:450f:c389 with SMTP id af79cd13be357-8cb740dd323mr311780485a.62.1771435480018;
        Wed, 18 Feb 2026 09:24:40 -0800 (PST)
X-Received: by 2002:a05:620a:4724:b0:8ca:450f:c389 with SMTP id af79cd13be357-8cb740dd323mr311777485a.62.1771435479590;
        Wed, 18 Feb 2026 09:24:39 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac8d46sm44181368f8f.32.2026.02.18.09.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:24:38 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:24:27 +0100
Subject: [PATCH 5/5] arm64: dts: qcom: sm8650: Drop redundant VSYNC pin
 state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-qcom-dts-redundant-pins-v1-5-2799b8a4184e@oss.qualcomm.com>
References: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
In-Reply-To: <20260218-qcom-dts-redundant-pins-v1-0-2799b8a4184e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2448;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=MZS6+kfQDn3XnVGaMmoY2Vg/6DpKm3HfF39YP+7iMd8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfXM6/S1exjeDXNnx73DKQIujiLXtv2v+XeK2
 L8ax2XUY+qJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZX1zAAKCRDBN2bmhouD
 1xjhD/4tbOfmAxeLVvAxc4F0Hm7mPMxnbu2YGYpj/GDN4oichxPIcnVTlXEjn6JjdIkJTDNbidY
 ndJYJIkpnSUGwWWWj9Q8297418fYRPNB3K/9hmYyPqKimwJJC+C/rkgPKildX6scaWVyjfoI1Hu
 MCIwczr5HjDsaU2hV6otDMV48apAWXT2unwP4bX+1N1YUlKv5iuhFm34bnHaQsgNW0giVcnP+AI
 Ua1lO4Uh9L8hyjfBIfFaI9KOPZetfI9LrHMLWxgJt7ZESk2aNNZ9DGh7a2SnnzUc5dNZybfCx/g
 MfC1jXaYCafYS1FAAAXiXOFhMXh/kJFxrZl1BtBgfMzBi7zSmo0sfY/tO5MufP0dO+q4u7U3/9Q
 fcQBi5PEm7Jd8FMKQS1QkyQfpYoUhd6w66J8yuJuAaNZyz1ZmlN80iSBZME8iE3ZAGxfH46f3Gt
 vBRlVAOjItgxETtAbWY5FAhg7Lj6fabdg8mvspjgMbwWtlH3Xm0zyHYnmcRvscdUHEZ6zDdxVQV
 T5N9bzZ/2IXZkpoC15yQ9t4+RCO9bgl29PCBwU3yd4ry1qPq+TQ+8cY/Ws8JYHUY2yFjiBGKuOd
 xg4LvcehwJz6cUGSwX75srxZsdsvr4GKAXfgnZAzYJXyUMcAuiaddnyfl1FtKKwPFJF3rAQyijm
 Ews1Fw9SrFZuNyA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: -UqhbiQ3K_A7im7g4zG2zVBBPR8soUbm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0OCBTYWx0ZWRfXyOGzJc12rSgi
 H0Ce4xDwvAJkeQ/j30pkeSD+hpXdxPZ2GrgcEbJ9+9BaLQBk6L9FDYkjzsSOE1lh/J6zncFJCse
 Stj7biTKOqEHHRtcVBJmAtmosMfd8iPO+yag4v8krzr8aAAF4rdd0GrEnYOjcMDvV/P+h0xfnb1
 GzAMKynh63/jQ5ap3dDPv5d9FAYZt1HcwrL90Ebw7YjcekbtKuvfH5R6BYUc7ee6awch1iKrONf
 i1VZMW0sZR8U++oLz1W9nkmvJXE/7DGASF0Unm/oGbDJaUwzv+qGHQlUBBGH09uIuEozm1J8t/c
 2tIXKVNQhDH3tiUGHgb2bS+MkXDOTEUTwZNaQeDAbvWLy24yErvYW85XUu1Pqp563y4COzTYXRF
 UWgLjLCC6ghbypVId3fTDAchO8NUGXXEXTl8i4Xiyvzw+Vat/hZ0IHjFisVhA6i5r6blMnxe0IW
 Xeb5S6jzdKIsolNIe+w==
X-Authority-Analysis: v=2.4 cv=b/q/I9Gx c=1 sm=1 tr=0 ts=6995f5d8 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=kJUOvC4QKfPL0WEIkKwA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: -UqhbiQ3K_A7im7g4zG2zVBBPR8soUbm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602180148
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266484-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1473D15848F
X-Rspamd-Action: no action

The active and suspend pin state of VSYNC is exactly the same, so just
use one node for both states.

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


