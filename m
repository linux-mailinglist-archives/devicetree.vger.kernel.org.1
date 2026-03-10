Return-Path: <devicetree+bounces-273522-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GSTCx0hsGmCgAIAu9opvQ
	(envelope-from <devicetree+bounces-273522-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C88250CF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:48:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2FC133152E9B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 13:18:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502763B38BB;
	Tue, 10 Mar 2026 13:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="myCLgkLt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SE9ZizOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EBF3B2FC6
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773147828; cv=none; b=gkJmLsZb03egH3cl60gHXhj6VSuFk0wqCoOwmqyQxt5Th4i52omzNpyzF1FnXGCLzr1O+sJkd7Z0vetTGTdBFpYKbNdmMilguGtaezUshUWJjPzuzCbVJg5gspPlsKsY9fk9s5MYTkErsPxlEn/0zL4WqBQ0lsjOzJ+Z7LM/rF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773147828; c=relaxed/simple;
	bh=2T2gETQgKV1lswCYgYKY5yi3FFU0H5AjeL8cCjnIbX8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UjLRDaARrEGjlnQZGUvbKKeTs8NO1SQwKOLdUc1SXVNRQ+zVBOGzUV+1BHpI9cAiGCZtgQ1uQiQGkpKSMLahFBB7Amrmu3al4S4XUJ/NKNE4nMdkDJQQ09zFMpmZHqz/pOcDJKoPZQjtB55WWSUdnQDq9SysBp/pBfZdLHaX4yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=myCLgkLt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SE9ZizOK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62ACaogP024877
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/bEZSShirNOQTesuw4xFlHLWwBUNdgMyfsEIvQ8fcpE=; b=myCLgkLt10C8MNqM
	KJ49kfg42zGiX58UWfNsypR5nZHET8TnxdSdGyM6GH9D9GRQVAu4ntR/TV5qF3ym
	nDQ8w9z5IkiruGuoYAuc1c8/cHnXVNkdml3K/wv4mgLWC5iFK5200r8Egjy7vy1J
	HqDITTU8Lb+iS9IWEt7KOrbwYyb1g93+75o5b4r/OVOEfcNiiMC8IIzwqgTYHBG6
	O0XnJ1WyF/BBNiH+kTQ7YpFmHSW350ruzT9bzLyQkU6131Mi+R6Rml8ui33Hfihn
	rNbfkjCZUUNRwQy+MYWwJrqn4QRgN2OFg86lk23et6fxT38UN4sGXMWSMCUht6nq
	AO3jow==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctg5ngy9w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 13:03:45 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-94e9d481d9fso3690367241.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 06:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773147825; x=1773752625; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/bEZSShirNOQTesuw4xFlHLWwBUNdgMyfsEIvQ8fcpE=;
        b=SE9ZizOKoJPntuPlcysRI2rOaqY92qZvB2Y+/WNKQfxl+HrmOoBSUoSHCjHDYmjsk8
         e/bCOK6ynCGafkenLA+g/qUCC1JpbIVS8qPhJ0F16xHgfgx27+2n7/CkP4Z4MivuBYvT
         CUV3ycPJ4tMe+gVnsSQf/KOAEpWErd/YAkUqXgC+O6XJY2tpGer/8Kq/Okx9C6nDr4bO
         7uyA/vrxG2/AD+do/3CLzzmCdedP2eiq+KEIjJJOR39mTZkCqx4Bz3Ryib4hnrZTnQue
         dkqIvA68bjimNfRteQv/xHJxPMki5ivsyetKZHEYe1UX4eXXmeNU1m1a6on3jNbel48+
         v9+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147825; x=1773752625;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/bEZSShirNOQTesuw4xFlHLWwBUNdgMyfsEIvQ8fcpE=;
        b=BTtTXC5pfLIS3xatmKIfeR8IeGVJ0CzDLaD7eqEcQVaXVxnn7i5F/o1NA3rGZDC0jI
         S9f3tpXgC0mmz8U5cGJ7tc2UQHfkcQTYI43jG+9Q9eurRW7Ye66Xtp1Il4+xH+zXg5JZ
         CJLHM+BnKmPx572UWtF3ohhG718Mu+vwZy9fzBIXWTJFn67vYtCj3LYMfP5NrwHiM1Rn
         JttZE64W3r1DM/d5drZbo10T9E6GcbRyDVxBBTuWNX4P+D4NPhOKbz9PokfA0i7CjK/J
         R61Y3viaE4T784407fh98RJIywvaOhFyJ8t+RspJB/p6cMZlWpykssSg5uLAYwpXqmVR
         Gvsg==
X-Forwarded-Encrypted: i=1; AJvYcCXSEtVo/jXCB/9cVpacVarLdF/BYbm5Be0YA018wG6RCEX9Kje3uNahrQVUClmdmL6h2ynNEHC6GErw@vger.kernel.org
X-Gm-Message-State: AOJu0YzJND8rRwZNbFzcKM6PdY0nDdKL29fPkSpeKlkScsAc9gwQq2Io
	AJOACU5+VHzayhw1HJKEnvDJ/k1Al+awoBsWoBJn+CtO6gzfuOqrG6w3fke/sPZmAEkyJoPIKd7
	SvYs74+VK+PHSdPZVODD2SrkBCetd8sET8pWeYpiBIDW2mWRWcyccvysU40DABVwh
X-Gm-Gg: ATEYQzxSfGbIZxtuuSq2Q/aX5f52UxGYpkP5p5OHp+hWpJui0oezBMN/Orc0TVLH4LZ
	m3XULb+xDcjuSybO96+HZKgibKhnBjcpV7Bo6BfAlAss0UQRPw8T2Bi7Nhj0+7kPZ7RnF8X/wat
	MndO2SyVsDGYXG5W1DM1GcuYWR1CegpE5937aoHKTliDIxM41yIdgfdaMRUNLV1T9J0kxAqE6bK
	R4n+eEUI48Es+D0Vo5gm27xV57EFGXQXpouHTtvDHomtZE2FbMWF7Qz/DN8OrbZ2r8Outzua+er
	q9VirpFVJAXIVNFTZivVdM5AjeQT39ACNWh/v68LxmSHJ9ImVc6sfs5/CuP0bBhhy+zOC52wp0i
	ZnP0SCoCrO16zp1j6OssouYzX6ORqtERVGV57O6Js9zEN
X-Received: by 2002:a05:6102:5086:b0:5ff:a34:6ce0 with SMTP id ada2fe7eead31-5ffe5f673ddmr4914116137.12.1773147825322;
        Tue, 10 Mar 2026 06:03:45 -0700 (PDT)
X-Received: by 2002:a05:6102:5086:b0:5ff:a34:6ce0 with SMTP id ada2fe7eead31-5ffe5f673ddmr4913920137.12.1773147823402;
        Tue, 10 Mar 2026 06:03:43 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485246ed174sm178732855e9.5.2026.03.10.06.03.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:03:42 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 14:03:21 +0100
Subject: [PATCH RESEND 3/5] arm64: dts: qcom: sdm845-axolotl: Drop
 redundant VSYNC pin state
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-qcom-dts-redundant-pins-v1-3-98e2ef430717@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1453;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=2T2gETQgKV1lswCYgYKY5yi3FFU0H5AjeL8cCjnIbX8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpsBadIDY4Hce5d5+u9tM2/0ZrOB5ef01WXxvUB
 R5zhINwvgaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabAWnQAKCRDBN2bmhouD
 1z99D/9eyNMGWhFas0R0YCigZ5oXZiCOYM1Kdx+CgNO3FIcZXIY/KUGHdvyLZlENfHBwKPabYwh
 ZGyD7wODI3M3YUbQBgRsVIJ13kN0hrurdVGVYfJV8zkVE3WOhh8akYqHWoZxbKTypwlrvcMjPhF
 9cZfRFrpzHz8uFT/RnmVx10OdNC2S8JyiY7HydiVTZe5QbM5PBqSFLNesPZdPsK67prbnO1OHB9
 GdDslY3zWJ9Gj+gX+u5H5/yB9gtt0qZ5FovdLjK+acInOJlKCMANuL3WeTTeL+Owq+pG9KBTvFE
 Js6JC+I1GU6Ktc18khBRjbA/LlNx5WJX7/1EDkFJUmT7uP2TnKpPhB/Sf5cxDFy2OHnid8aKvXY
 6xe7+YBuCYdEodMtteOcF0QwKw44fTFsJ6oBhhKeTHvqjbLs1B6FVK9J06NXz+4cWjuaLV71HST
 IJGkmYWL828iSkHz7HYrNKRIia2/OnDA512x3WuDzyP/276by2mKf5IySQfrNC0DmG7i4vpX0LL
 qJYHRH3nnSKHSJmJ1415AhdaGHeAkFhFciA46OtpZEiFInqxgV1+q8CON3PjkNLIv1L7FiQi3VB
 IyDiOVeUPGaj1eDQ18mbGnf7k1iDRJS0SZmhsDmg5W/twZgjFhZSWqQrali+LsbZZbnxuOZSIhA
 494Ux1sEvgmUM7w==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: ecP9uu53yJXKpzawRe6y162VSsemJOWi
X-Authority-Analysis: v=2.4 cv=ervSD4pX c=1 sm=1 tr=0 ts=69b016b1 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=kqCYd9rN2MbHXTwIacgA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-ORIG-GUID: ecP9uu53yJXKpzawRe6y162VSsemJOWi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDExNCBTYWx0ZWRfX1Kq7u0i9+eM8
 Q/ARahowsZ/jxmdWoy1rwDipJsMTx7D71qqr7PG1ZNoucC7G9LkdDjKF+9oY3aCDCdBS6VualVo
 t+kHAusvdZE7cC9o7RoCcGwog+d+bTLGaZYDh20O7tpXfcVI0fVRGKFZsR1Bo0yp/qHqw5JZnLr
 +hZelzSQ1YWda+wEAAiSIXE6VA50qjNVa7goEaTV6dyG8VCsvBjlfVlKvWYJvS/ed55VrCmwMIU
 hJjxFARoFut3pu5LfN7YE2t4UJjX6kdwpzZUKhDjpEL9Sd6qgm0T/ZmTwjixTmJbDMe7w0RuuW9
 epbt4XdaXAfWhnOQRr/HjB/ixWJA1SL/rMtJgEFZ+4BllC5HYIg254Gw1wACdY22k69HJ+O4f/Y
 ngZe11Zr9BL5xQMKU0/BG9/AJ7TO5fCcmLYfYY0H1oaCGL850mqZWju0vS8hbqs3vQZIJv+AVcm
 iMb9t/4ZXM4M2QOZ7kA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100114
X-Rspamd-Queue-Id: 15C88250CF1
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273522-lists,devicetree=lfdr.de];
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
 arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
index 51b041f91d3e..740eb2255072 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
@@ -483,8 +483,8 @@ panel@0 {
 		reset-gpios = <&tlmm 6 GPIO_ACTIVE_HIGH>;
 
 		pinctrl-names = "default", "sleep";
-		pinctrl-0 = <&sde_dsi_active &sde_te_active>;
-		pinctrl-1 = <&sde_dsi_suspend &sde_te_suspend>;
+		pinctrl-0 = <&sde_dsi_active &sde_te>;
+		pinctrl-1 = <&sde_dsi_suspend &sde_te>;
 
 		port {
 			panel_in_0: endpoint {
@@ -623,14 +623,7 @@ sde_dsi_suspend: sde-dsi-suspend-state {
 		bias-pull-down;
 	};
 
-	sde_te_active: sde-te-active-state {
-		pins = "gpio10";
-		function = "mdp_vsync";
-		drive-strength = <2>;
-		bias-pull-down;
-	};
-
-	sde_te_suspend: sde-te-suspend-state {
+	sde_te: sde-te-state {
 		pins = "gpio10";
 		function = "mdp_vsync";
 		drive-strength = <2>;

-- 
2.51.0


