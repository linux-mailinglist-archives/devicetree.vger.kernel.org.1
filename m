Return-Path: <devicetree+bounces-276777-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BrKKUCOuWk5KQIAu9opvQ
	(envelope-from <devicetree+bounces-276777-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:24:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3832AF7EF
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 997AF30E1B80
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:09:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6298C3F880C;
	Tue, 17 Mar 2026 17:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EK1nc3DY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YpCWRQQb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB6513F87E3
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767319; cv=none; b=kj2No0SxQsyF1AbBMGVsDjd6Q7rMEtF2YWSCLmHVr2bt84ISXdIdzeBue21R12tIX68BAl6m00h4fGwngwNxgXrX/LBd1AODZuu/3+4tMkiiPHTH6mSqpDEIbqh/rNaHib/y5K/2LA5vTdsaz7UB/5fxQC8FpbHiCC9KpMv4vkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767319; c=relaxed/simple;
	bh=ygUhfhhlNEcS5ed0yEjy/SiIGiQYCKASImFWejmvezM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fJF9eaBP/2Ts2BAGrnQDQrVbR+2D/ORJSUjgDbf33FZzCyeZyxqSO4YNo9o6RMH5PW45zPIWbrOgMxrHBXxIAjtMgTDdZLNBhisl2BfFYcRMRd6x6eiQMuJzjRooPrdKGkfQDqMeha8toytK8tgtmczIrBXh/MK7qfwXzukoli4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EK1nc3DY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YpCWRQQb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HGA3A12007393
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cJ57mLjAOBgFX/GNbdTAAIRCUNH2RaK++8uw+VqITNw=; b=EK1nc3DY+eb3a0M3
	cOa7TI5tjs3Zw+sc+k9Sbzhk8zRwP8gvt6Agn0SA2Yg4PjgOICOKjaMrXdlsQ6p2
	6NL7hRx6w2Cm8YaS3AyNf/L4gtZ11yFahgptEGK5wWEGnPitHip9R7eVoRKI0yDo
	bfk7NnknEiTFUmlx5pn28DCkERKC2zFYe2aca9eStqiabBmBDHW08iIVB71F9k7i
	e2I5AAJmmrFU/ztoaDCYhULAGMRoZEFgrj9TQ4ZiBZZ55adA8wdKVsDXbFi/cvVd
	Sqby/ik8+XUUPVKBALi6rtjvGM7Ok+1WzaJuNpPGru1i7phjj18JHGXvxQfYIyqF
	UywoWw==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya83r7ds-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:08:37 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5ff9edc2158so7362342137.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773767316; x=1774372116; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cJ57mLjAOBgFX/GNbdTAAIRCUNH2RaK++8uw+VqITNw=;
        b=YpCWRQQbBtHt6KmvGgfDIPPn8EsBBwtqp069syvEzF1OJl4sz1A6B5g/df6ifh0X/H
         wXamddJDwiVz2SHrrf6LNvqzuy2WKGlNpQdkMpXLWNcFhoM+shyhl4G0VabWz8hs3u2F
         JdC17S0n24SpOg4U2/pRMsLKBlEP3iB7hj1vgJzzkHE2cI04ov8cuz/ZWgtCuFfz7emo
         dKM3ejdwGht5uHseDbfhaZFMLpZuweDHZmfBNbpcbEVRyDY9dNUM0R0zByVUDlHsGdyj
         ZGthBGFjdy2BS3jNmC1+6F6Uzb021CLMYFJccqpiKoNBwKznJP7zpfnKvmRMOlZ2WSBg
         Jj9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773767316; x=1774372116;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cJ57mLjAOBgFX/GNbdTAAIRCUNH2RaK++8uw+VqITNw=;
        b=fbGZ89z3VXgt68HRmHqoBOpvlmH8P53bMCj0kCgVY3EGvKE3HYEe6b/4dEn7J5RrWB
         jSflFQCL072A/FiovljdP3za5sBQwNilZXX9Dq5u/7af0JPYKH4XV0gahLMd1iPRk/M6
         GYN4tBIv4e/5PG0KYUYxXDUhXTLoVHREjuh/WpI6Lhiyt5nHML3QodW7JAvNLQpqsIMc
         4ji8ZKgHLEPrzVN9DPrsU0jEsRjVK8F0DWEoSnSfwRPz/lBPNLQI+y+B9YDs4AorPdmG
         sxFFaQ2WYEQE2b42cfLbLMuT1RCpdaAmKhGDa4ruPYd2aTkEfpcxMMNoZfWhCP4zUWc7
         Fz+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuLbor69vgl2xbsRYCg+mNtNta+8IFuV0YZO4fQKdaD7xOTwNNWZPeRe7hGwXL69PtpJbCZ66mt/U8@vger.kernel.org
X-Gm-Message-State: AOJu0YyjB2BplKqWPLp/YdMWBhW4Wh2G/qHL96UjomHc/KMtSMH8htAk
	Dwn1eIRz/Tx+f8VQX9h/Jzq1wAsIrAVNO+3UqtbekuG5WkyjThd3291iaKMmWdNtUomrNQZHdAp
	BbQxw/MQrykGTcvZ2w2w/reKDZojk95OEt+bWZno5gjAbkeRPTHr471U0G53ZXthp
X-Gm-Gg: ATEYQzwNkg5IP6R3fzNuGf4y4wCJw4dODhTaDARO98ZYQXsIYnhGRhtMyKM8ykAjI2L
	JD1JMxbxxMv9Y4sO7prM+Q6rulc6Uy7XlB4mCYeoXF49pnqAdvlH/bHSJhVxovH34Op/xNz1dRO
	/WzbVlzjn6jZ/DoTxNR2T4Aie2fTLYHkaP1w8gbL7b5GcFFmkIl53VzL1d8+jhBxfHhcHElOb2P
	Z3Tho28mV2ReIA8C2FzvKn4osv4b3JIzbI4S2P7Kjy5uFgMe+75lsfV/6bt3TWLFPjpyquB6KSy
	lQfwnH8FvRR56bsNUvmFb3pePjNqmPwlXxEj/qPlJS/8/PA0B/rfRBV/nzMMBTeIz68onC+F42Y
	I2IsI3oGLZRuSUk/yi7iJaXFBvpP2/3m/yqIh3FFG1C4g
X-Received: by 2002:a05:6102:2ac5:b0:5ee:a12d:55b7 with SMTP id ada2fe7eead31-6027d3bf247mr234458137.29.1773767316099;
        Tue, 17 Mar 2026 10:08:36 -0700 (PDT)
X-Received: by 2002:a05:6102:2ac5:b0:5ee:a12d:55b7 with SMTP id ada2fe7eead31-6027d3bf247mr234443137.29.1773767315684;
        Tue, 17 Mar 2026 10:08:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm877072f8f.21.2026.03.17.10.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:08:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 17 Mar 2026 18:08:22 +0100
Subject: [PATCH v5 4/4] arm64: dts: qcom: sm8750-mtp: Enable DisplayPort
 over USB
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260317-sm8750-display-dts-v5-4-fb53371e251c@oss.qualcomm.com>
References: <20260317-sm8750-display-dts-v5-0-fb53371e251c@oss.qualcomm.com>
In-Reply-To: <20260317-sm8750-display-dts-v5-0-fb53371e251c@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1583;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=ygUhfhhlNEcS5ed0yEjy/SiIGiQYCKASImFWejmvezM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuYqIJt8s2H9y+LPQHck77O8HjoclWTlcaHCfr
 83078Jig1OJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabmKiAAKCRDBN2bmhouD
 1+jYD/9jxjilpKQQzSKOwSMEIytMtHD/z7vIA5WVJhhsVn70vrO0MIpbWy2Tjb9Bbii+3kLgyy+
 bwC0hN1b7YuuVQdZ31BaOPhsxyo9ummeptzz6wPaB9brUlWJZk0oQzVRDw/3xb+ODu3p8myyeEf
 JxGWJIPmUyNTzJAkp+kYWWwXCX+h6CRV1OMijs/FynguV6RyH3tip0cXWKRVYwpZmnXpa72jziF
 WbCpG24B9kyL49p8hFrdqzgu0t/joaKLLkhYxkHjW5hn4AiL65Jt4GTamxx9ECCLSA9bEjnSHOt
 hhimWW7M1sBf4OjKJLaQ2ktKhvZIePlpr8msljUIX7EPHGB4x7dO6y4Pa8kHe03k+T2oIFNhcJB
 1Me8rxv4vqKSAG57OAAstOM8K+Jrl8QgsY7lP22+2HBGHZtWqDFXoKuG+2SQ8zoRVfK/ZhLOHpX
 AWVI3dxqPUKy3uHyn52vdfiUKZFtJrpbZOn7Uk2ay3DGpTelTS0zf+a2vOvi4fmQHoIMI+fNViN
 wj2YKjgN4l1Tb8yo1GTvCbrU1dGTvQJbi/0EgwJRykLRH8TJhcUuA31k/JrZEK84lHF8Nx+48/G
 8/6RWKUVZT2OiXtMlp3tQmKSS/0xYFQSHhVaWI4QaXRB+WeG0lzwfx3d6OANDHVSUDnNrDdJ+GT
 dF+gU3K/nMTEzEA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: iPHwqVcPH72mo_wEtpMn3bK429VfjZEk
X-Proofpoint-GUID: iPHwqVcPH72mo_wEtpMn3bK429VfjZEk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1MSBTYWx0ZWRfX+oDn6I3/Y93a
 Xc9pZOts2fSjYa5AyaJEuf5GF88l1pblB70+LW7LzMwPgnJRlYig0+8IOjp+dB2jHsuAT9mcl8V
 b7h4bkFcMZqE6RHiMuTExpO69WYs24BuMwl0RgL5PtUbf74ACbH1lUnLepDRPhPmvBFg9+hVrKs
 UVzgKjayZOR+ID9imk2wVk23Tc7tJNWTcJN6P3uq+jCZXat5D8nsou9hFlNFP77y5SJz5jPA++C
 29cMszGQeVx0/VgX7XuOIgA/2cUcBMrWhBHY9DR0wT/Z0pf0mc5xBAwNcmZbfgJv9xZk7lx5oUr
 MKrF0HsfHil1vxohwx8Jxw3vkZVucFm9mrS+mSvYMEHjB4C+FpguUN0Q8+ZTJsK/mfsNQRlinHV
 1co7kHaVAYkIiRVcq/a+dVlMCReAIgUscwQ6RiNZ/DRCsKa+LV1a7HCXLG16WzpYpmc2C4KwaF9
 76YkgiBkGEXLFTBfzag==
X-Authority-Analysis: v=2.4 cv=Y8n1cxeN c=1 sm=1 tr=0 ts=69b98a95 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=geaBrObO2TRU0f7BpigA:9 a=QEXdDO2ut3YA:10
 a=gYDTvv6II1OnSo0itH1n:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_03,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170151
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-276777-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9B3832AF7EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hook up DisplayPort parts over Type-C USB on MTP8750.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/sm8750.dtsi    | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 6107a4ed2c80..3837f6785320 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -987,6 +987,14 @@ &mdss {
 	status = "okay";
 };
 
+&mdss_dp0 {
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+};
+
 &mdss_dsi0 {
 	vdda-supply = <&vreg_l3g_1p2>;
 
diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 2927b8ce2214..6cba54faf294 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -2789,6 +2789,7 @@ port@2 {
 					reg = <2>;
 
 					usb_dp_qmpphy_dp_in: endpoint {
+						remote-endpoint = <&mdss_dp0_out>;
 					};
 				};
 			};
@@ -3398,6 +3399,7 @@ port@1 {
 
 						mdss_dp0_out: endpoint {
 							data-lanes = <0 1 2 3>;
+							remote-endpoint = <&usb_dp_qmpphy_dp_in>;
 						};
 					};
 				};

-- 
2.51.0


