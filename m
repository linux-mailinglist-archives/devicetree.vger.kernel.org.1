Return-Path: <devicetree+bounces-273442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNjHKcLur2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:13:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B3E249303
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 11:13:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43A2D311158A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:10:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21CE644E051;
	Tue, 10 Mar 2026 10:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d11hADng";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eljkklyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C966744CAF3
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773137420; cv=none; b=X6vm2byNPsOe588IUTodaMB0v+b1tiifcqFyu+uHncD7jC3e+VMbOl9goy1lC39YJx7ziejKMiRtObhYHnRM+XNDTA3mzS1sSX45JpuOj1JnTChq8jWG2qMH/h8JPtrmM2WtC6ZThJHXUqdc8gsLEdzsRDkS4vWo0qZ7UmoYTOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773137420; c=relaxed/simple;
	bh=eNUPHACdGvd5iZVpi/2IdeMGbrdFYD389Fy9diCrOeI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=n1vnamE2UFXM9x1tjfxgpATe6HqxOy3Eh42y90hxnAn4c2kvpIJ6Xlj0w7AHCZ3Abiuaf4OPz+hmiPvB035Ho1PlQpJ0sLckAtRandETkkrq0C+IenhlooJIq6sWbelaZP8RdWRx86D/qdOcTwF44UKmuQDQa5bW0vBys3a1hzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d11hADng; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eljkklyD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62A7wJLJ3124462
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:10:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=; b=d11hADngS5RuoLjT
	u2IojXiIAlJSl/a16wlNwm0CnYv3Ul+EdBbLrPRpCH/2zaUyQM5yOoPvNSInFCKp
	ee5ruF2zc78jBL5YmGWn14u36DXHlmo8NEEYYaZbEgu0igueSNmPpDIf2/FFOL30
	q/r/T/DPnRE/8jQIIWNSXELJLX8rsnKCFMjCHtLGuZPtKKbGnpRpoxLQdXvo+eIh
	ISJL4mojnPnoDbtWhjEeLTKis3v4Z6M1IfpKPZPuygMeWoP6iGi6bgFn7qoPw0V5
	hbMCwOiM7aWxrGE8l/EKIKxhIHe2BVdQjmPWMCYpxya/b/zgm8rB/XQagPRVfXdw
	AFKcQw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctfcj0h74-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 10:10:17 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81be6f05so1366255685a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 03:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773137417; x=1773742217; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=;
        b=eljkklyDm2Wg/XDuL0baGVyu/L4Bi8IqgqVccdoObZWquu45TJKSdhS+bvgKF2ocQo
         csoj4qp/ikEPl3ycPir7SXSFl/VHYoXoKmn9bVw3rHJveNSB21M1fIUITvPSxlFZYjGI
         sFonnD0YR1Z8pAeoWumn50Jg0Oge0Jxe6FVLvWbUFpBr/2tHmceyG/oC7q2pOIAosEtU
         i/MkBhal1MQ0mjHdRy9pqGoAAzf9D7KD5GLUabcWMd1rR+pLnysd9Np5cB5pbZTB7lhL
         82Th9KdgNUig8XjA2+IDGYQ8yQP/V3rEx6JHpPvXT/lateFsfnQWg+ihKA78FELT91GU
         BvSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773137417; x=1773742217;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=;
        b=dutbPj0ahVzVoFwmpDiUA8gl45k+xdkHUtJtGZurzFFU7XXdVEsLIahuO2wtGHd3aD
         b34RmHfKUBKXVYZvf3/lQul06EECiN7uTN77D2F1zE3MQwZaHC8yJUIyv18bTvogQ6+G
         pX6Mmktx9PbJmqTCQ4GYcXAGJ3C3YWIMxJpq5o21MIVRekFfbJuOohZqMUY6zLRxKr0x
         4ZoiKdmsv/Jbj0ec/cFv56suVizOILoS8cNFw2kwVQbJAVUkG4kTXZNH4aHSz9r4QGxH
         X64FTGoj3jEJAP52B4z/NBXXGr7gdslfSopWN0GkGhSfyB10yF0tm4Krkpj70A76Z9ob
         sQVg==
X-Forwarded-Encrypted: i=1; AJvYcCWds0iHgnmbFvNGVaUi2MZdOsaoYWdkUKn2ldModYC7wrcWg1wDmQW6FOL/YXOkusLvWUBWTJGfNjip@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3CGaqcCWP3++Wi0mtxJjgAL23Kzhs27b5EcZYFd/LufKZ9Rh5
	qJ/MagW8VBItHo1XmlentI4ZCiMaumc6d1CdITTSjfjPhm/pmhk5i5GKJA0lL1eHsVKCNzzbtFZ
	GoHeidL06lAX61tFUAhPCsiK28eKJpPXJGdCHt9Siu38t6naoU7piu/Me4hTtXavN
X-Gm-Gg: ATEYQzz5uZ9MDzhHTxVFA3r66chAg8X3yx7ILAWSPIc84y3bRVbIXmQxgEYUVN4iJWR
	2W7h3SXeTY+7cjXUw40QLwu+8vu5gcZwi6KeFMp6HQOtdaWQVuZZp5b7JipBAd5TCXHz26tHEjV
	uBAtmuE7s76pQA7sNGocC0auxav1xM1bBtekHrZ7BYZgW+apmnwtecXe3h+BI8eCwgXKRO6hS9q
	mBDNtbtNPQX4Qg9ix9RClUIVAyMp+iWmPfgc/Cl2XXgBrDtlTwv+y22H1IWAjLS8jLsL5uiwxDD
	hHXb2PwUm3bwoxi4OrfCbZDrlX+NyXSY++BcRf/Veex5BoKjl7SfjiQ+3plqD200Ix1ux6l8624
	eZ3gKuCDjlWfO7QViWcN/usQls82225le79q7w9NczytL
X-Received: by 2002:a05:620a:6408:b0:8cd:78e3:879f with SMTP id af79cd13be357-8cd78e38c90mr1166051285a.35.1773137417148;
        Tue, 10 Mar 2026 03:10:17 -0700 (PDT)
X-Received: by 2002:a05:620a:6408:b0:8cd:78e3:879f with SMTP id af79cd13be357-8cd78e38c90mr1166047985a.35.1773137416748;
        Tue, 10 Mar 2026 03:10:16 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48541a7f182sm87703575e9.5.2026.03.10.03.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 03:10:15 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Tue, 10 Mar 2026 11:09:50 +0100
Subject: [PATCH RESEND v4 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB
 headset and Type-C accessory mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-sm8750-display-dts-v4-3-d571a786bb70@oss.qualcomm.com>
References: <20260310-sm8750-display-dts-v4-0-d571a786bb70@oss.qualcomm.com>
In-Reply-To: <20260310-sm8750-display-dts-v4-0-d571a786bb70@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2205;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=eNUPHACdGvd5iZVpi/2IdeMGbrdFYD389Fy9diCrOeI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpr+37H+x2yJVZENQrzvi/Vp28IoM88d3MrICqD
 P32Bos1VOeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaa/t+wAKCRDBN2bmhouD
 14/7D/4wuGAr7qQ+cOWjGIygUbv32F4c74xIas3xa8J8Hjkj+d8wFnCdC9xWiohtPDwysdvXkIr
 TTtCqNITp43V8KJgBZ5UEro0f6tG1d8QPtFnkWmHuutBkycavx+N13mjJQi3ZvkaRcUNnW4tf4S
 XcAHpVnX8yZ+nbH2mT8zL/Mw5up1NtFQwQgISTA05xgXh+CSI+GUDr/+zAGH+ZwuVeKYlN9On+r
 lDmDz1QdNqn+wT9UiDG7IPfUKBT0M99moe9drfbjnnJxaC6Jr/aiARrRus+hyiREurnldI3ix3m
 EuBtjfg+8u+tPItFt2pepkfg7HIsJdwqHbxUAZToIhUU9sn+EGn4oTjlPCHdtEY90E9vJ4bTfym
 zhRzUwZ4zdHPa+Tbn0kY/KNaOSIWQS7Rha5R3ShAiiYHCQmOm+Nt6Z7laPU1VwX79/z0gkr600k
 lK7hB3NaeEEJoXm00I+s8hflL56ho67ZZdzLpDRZOoS3mQ3RSxUq9IAaiSzFedmxtQKRUgsWxiJ
 /HSWomokQFUaO9RX8xbPiT1yQ33KbCTBk95INDNTMXyASof5OxrzKpD3Kc9+GmqZNbAjG1Qi6q7
 2jRqPQgdN9rFv3Gq5V7MOqHgRmJmlD24DrYYW5YtDiB3z5a6Up5fAU7MNHLdNtl9r/wgEzvfE9O
 6YHwNgUCoXzLgzQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=H7fWAuYi c=1 sm=1 tr=0 ts=69afee09 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XOJNJb2f72dwbY1LfMsA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: YN4-ed2OiGSsLXMemU3rCYTKwMzjkxWX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEwMDA4NyBTYWx0ZWRfX1JTttWs+q+Vp
 SdxVp7yoW0U4HCQaeP8IdDU9MRi+M89XPIMN4mQhDqRdDriyJpHxVY4w3YSL1hFcR57U10B3X83
 ztIo3sB+PmzOVh4zGfQsNuy8tpumAxpgW5+9eYTXjjYFDxD5VPx5TaWJSQj8jCkqXj6QqX1ISlV
 84riDGCK4MO1FJQQq1heEcMPakxZtSbTU4ihGtW87/Vnb3s5liWfb63loLW6zvqc04wPX/V0Xwm
 dh9kkQ0r0O0Mf/AFlaZXe00Neb0v7VgNAjx+2Hi6b4dyZgAMQHVztP+/41wsrdznM3iPhD2Y3zK
 lnCOSvqhtvmZA/iM7/9t5zLDzR0hcg8Y1WoT1qM1NNQb4/5jgWmvd5ZXIAZkwjhNuD/KHbQxbId
 l9mIYto1WF0XZz2EltysvpAo4tT2NdtCPpcjSBukKrPOEC+rD+KueULviw7pg1V39nxJ9JJgqGN
 aEm+r2lbM9dbKmvmhKA==
X-Proofpoint-ORIG-GUID: YN4-ed2OiGSsLXMemU3rCYTKwMzjkxWX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-10_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603100087
X-Rspamd-Queue-Id: 06B3E249303
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-273442-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,e:email,0.0.0.2:email,qualcomm.com:dkim,qualcomm.com:email,0.0.0.1:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

MTP8750 does not have audio jack connected and relies on USB mux
(WCD9395).  Add necessary nodes for proper audio headset support along
with USB Type-C accessory mode and orientation.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 51 +++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 050a85df7358..6107a4ed2c80 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -54,6 +54,15 @@ wcd939x: audio-codec {
 		vdd-px-supply = <&vreg_l2i_1p2>;
 
 		#sound-dai-cells = <1>;
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			wcd_codec_headset_in: endpoint {
+				remote-endpoint = <&wcd_usbss_headset_out>;
+			};
+		};
 	};
 
 	chosen {
@@ -230,6 +239,7 @@ port@2 {
 					reg = <2>;
 
 					pmic_glink_sbu: endpoint {
+						remote-endpoint = <&wcd_usbss_sbu_mux>;
 					};
 				};
 			};
@@ -925,6 +935,42 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+
+	wcd_usbss: typec-mux@e {
+		compatible = "qcom,wcd9395-usbss", "qcom,wcd9390-usbss";
+		reg = <0xe>;
+
+		vdd-supply = <&vreg_l15b_1p8>;
+		reset-gpios = <&tlmm 152 GPIO_ACTIVE_HIGH>;
+
+		mode-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				wcd_usbss_sbu_mux: endpoint {
+					remote-endpoint = <&pmic_glink_sbu>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				wcd_usbss_headset_out: endpoint {
+					remote-endpoint = <&wcd_codec_headset_in>;
+				};
+			};
+		};
+	};
+};
+
 &iris {
 	status = "okay";
 };
@@ -1095,6 +1141,11 @@ &pmih0108_eusb2_repeater {
 	status = "okay";
 };
 
+&qup_i2c3_data_clk {
+	/* Use internal I2C pull-up */
+	bias-pull-up = <2200>;
+};
+
 &qupv3_1 {
 	status = "okay";
 };

-- 
2.51.0


