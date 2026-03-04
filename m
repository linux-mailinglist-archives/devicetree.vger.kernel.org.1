Return-Path: <devicetree+bounces-271195-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD52CGtwqGkkugAAu9opvQ
	(envelope-from <devicetree+bounces-271195-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:48:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 230E12056A0
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 18:48:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BD02D305B019
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 17:41:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85C663CB2D5;
	Wed,  4 Mar 2026 17:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fjNEJviD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YBZw9Z5e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537FF3CA490
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 17:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772646116; cv=none; b=GmqP6elIW86o0b4ZMmTv5rwq1VTSLK0Aj33wAcehRK9Z75RCvxbQjuLiNK4XEGIQhsDLqMMhDPcvaHRF49JzUCitIHAHgcWGewB10t6fXUKPAHsz1EgtWWHyYAG5PWJSyjQNgLKznIuN0kj3qo1bX4Qu063fhAOO1uCsQ9PQP2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772646116; c=relaxed/simple;
	bh=FVOZTq1ijDV9vsfM+ILLs5LfQatBgVIEvFea2+aORcI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gypFeEkc99MQHGyO3NEB/YiJvoMNxzIq0rWFFSfrFZpzO9Z1jRsyEqfEtcMtTQAT+rp6/E9RGRNqbFJ/Wx1reXyTBcCv6RvhcDUBqg8Yc/4hjUMmJbNXlVS+zomn4VA3q+d/jwrgzYlUgE8v6oRGpwyWf55uoNPxAmlmRV9w510=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fjNEJviD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YBZw9Z5e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624CHo2U2274961
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 17:41:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PLi8blPUA3oM3r6i2Xmgi+ePGDxpZMvutkakyZOMW50=; b=fjNEJviDsRP42Gh+
	4mXDbeITNNfc5JvCI6AljHT5ImewYrRfEtoY1VgMWQ6uX2jeT0BN52uFxGb2+k8p
	uddakazgBHtX4bLAa3A0u/RgKQL7RSKOBO1VsKXnDmpVk0XEcuHrQ+2mCQKRFUbo
	6lDZU15+zyLrMMCQa6yEdR9gza2cUTVhz2pNksVJ+ghQf0Ec+YPQRUloBmkSXOS9
	yKJCiZqzAUlaNW1XfGohvTUTA034hBwqS5L/X6gxFfBWlM5vy2O3eluAiRKjdCrj
	BatQZPJhCkDOvJ/S7gDbqBHIUwzIe6puRlab4YjOzxYhvB23srLlgick/Cd8UBqW
	xkIScg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpc4mtrtt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 17:41:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c7385a1476aso231307a12.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 09:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772646112; x=1773250912; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PLi8blPUA3oM3r6i2Xmgi+ePGDxpZMvutkakyZOMW50=;
        b=YBZw9Z5enKFmJLXJi88RQmwkcfe5B9Mr6g/Am1O9Kx8Uc86E6gHkwXVWVhmHfcKQg6
         nRuoGbcKf54VqgK9uyuY2aJu0aJr1sb34iwBw6m7RsH5r7+WA3zGWkcr43wZftrzMYIx
         vYYKpV9kmBQff7S+hAX1ylySZul/UUB7p7/l8EG1OyTHBTrBI13qJ0vQLptMPK/x3IpO
         /h/Llm9/EKNF74UU/Psq8B274i3IdpwCk8IliSj1eKg74T0Y62QZO5JlyT8mi/r05l91
         kxRLJjhv4OBVHRgFH3mN5De7qbVTlhKk9LbiEXwnaM74YDue/nW92EIlxq9y+52h6z6c
         LAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772646112; x=1773250912;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PLi8blPUA3oM3r6i2Xmgi+ePGDxpZMvutkakyZOMW50=;
        b=CGgVhXMROJ21VdF5C5KO0BeNRprpR1g0pnvpMlBwgl3VdzA3S905Y6hXIPA54JUiCJ
         +SVd6HANH7sWcGo7Bt+ov6EHdWFmyj54ClY7AOCw88CivKxm1/cC9BT3r/4DoisnAuQA
         tLLnfaDlza7BXxIceirUa/DBA98x0iqrW+BrhtSXRmAlSHCp5WV0d5ALz+JP4P5vkYBj
         DPUZcJVOSxY7obwOUZcKMuHKerWqNk9l9T/E+QHKTdLHZsc3P0lLAzQh8IXcg9IKpmHv
         PWb2KgBCseJ8IOtOwyOK+x3kFt2KXcl9N+6IzTJN/fOtnpnDcthTMnaW62CI+8g/+N62
         Gs8w==
X-Forwarded-Encrypted: i=1; AJvYcCWj6um1XZzbN/D2EZ1C5/+CX+srGW6TTkUuF64zf9WXrZOeN9pX9Ohkx4OMBiR34Ru12xMwWQZMEnIQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9GXUZ83xc7nJRXKGprLpifzjSoo8+vuSvYlKTiP+7nNPTSA7X
	SeJ65kplEB11xvu3pq0cOazQckItwxUoaOFHab6rwgHCLlUgIt27KN807rdX7n5mDiUqTFmypQr
	4lFW3SDvx07vguo5f3r4xK7KtN1trGLWMjS+KU3NNBcQLXQ5vCczyMe19qQh3qDlV
X-Gm-Gg: ATEYQzzQ7Mz5n966pjLdNQMqrzPIUykqkL8P22aeU+4gryU4YrI6lL3qi28R6jAePVO
	tVxJKx4j68bwqda+9+FsUXGDaqA+mMzl5QkkE8sYS90+kJEfRKLqZS0tt4hL6dV4FSUtwgCtjKM
	3x13VdeYF/6C2lmqSYDskspTQ/fqJHKf8b3PBjQetMLCQB48JV0bGFQP+UC3W66Gs2/mG8a3Sgf
	jfAO884cE3pV5ZYELcdlQdiHshkK7Ab2USZQwFOj5l08MY2zHZns0tmyod/q0Pm/oMY61GBYy+n
	HWjdtSfIEAODY7nB2EeN8vfnx10rzk3O/MhxCcuwmyuwy0aj8W6wFI5GyG5FiIvo+NM/cmNqWNK
	nD012DTyVb02Q1XEDMa2ar6MPimjx0JSCU1F410RWUS3GLTxqbCLU
X-Received: by 2002:a05:6a20:9595:b0:38e:54b8:60a1 with SMTP id adf61e73a8af0-3982deaf562mr2751600637.4.1772646112323;
        Wed, 04 Mar 2026 09:41:52 -0800 (PST)
X-Received: by 2002:a05:6a20:9595:b0:38e:54b8:60a1 with SMTP id adf61e73a8af0-3982deaf562mr2751577637.4.1772646111880;
        Wed, 04 Mar 2026 09:41:51 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c70fa5ea0dcsm16608794a12.3.2026.03.04.09.41.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 09:41:51 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:10:57 +0530
Subject: [PATCH v2 7/7] arm64: defconfig: Enable VIDEOCC and CAMCC drivers
 on Qualcomm X1P42100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-purwa-videocc-camcc-v2-7-dbbd2d258bd6@oss.qualcomm.com>
References: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
In-Reply-To: <20260304-purwa-videocc-camcc-v2-0-dbbd2d258bd6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: hFy_qZW5YItt_Z4AAaIKITQHWTdzTkQD
X-Proofpoint-GUID: hFy_qZW5YItt_Z4AAaIKITQHWTdzTkQD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NCBTYWx0ZWRfX8KaYTjKgdiET
 brg2yfs0MpoD/HmWAKGklsHvvxfaA+L8J5oTdxxfvHchqKJUUsiJ/1AZjx6XisEkqDP71xw1rRM
 g4/JBJfiCIrLqsgeDSs6Rq0BAEVhC4RQhGuzJqtY2jml6YboQpYuZHxxXd4sCV6Oa81LO1hjtBT
 GZGuLuPE7CLLepAk9ytc07oGq55+BB76YfAeIV21T9jk7DsLO+CrW76Utt2zDxJueHEfV5B6MQu
 ywH5r2iCTgJNUYXr1moD+SP0GslsCBPhPbja7mPBXzRMgPR969n6Oq9co6nsh0BJ+CEce00/tl9
 aAZ/BFIqD4JehwLSrcCgkjq3cFjwFDMie3sqrdIQUEqtaKJaJIqpFxJjmz+tMXh3lAGJnzxBdBM
 bomBZQDYZORJs9RvXMT7Dyb3hh138U5jDhIiPj26Ju0HBKMtwQ98JlDAnMEISmffdGoS5skev+U
 FlfL4rNygc5Zfk3928w==
X-Authority-Analysis: v=2.4 cv=C67kCAP+ c=1 sm=1 tr=0 ts=69a86ee1 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=rO3wVDe-YCVyVCuK1RsA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 malwarescore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040144
X-Rspamd-Queue-Id: 230E12056A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	TAGGED_FROM(0.00)[bounces-271195-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable video and camera clock controller drivers for their respective
functionalities on Qualcomm X1P42100-CRD and similar other platforms
with Snapdragon X1P42100 SoC.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 7a6d7e70d38352a3eda4a39c39a9549508b3b944..50cecf05027e6de754771b9ab5195216f908f859 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1461,7 +1461,9 @@ CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
 CONFIG_CLK_X1E80100_GPUCC=m
 CONFIG_CLK_X1E80100_TCSRCC=y
+CONFIG_CLK_X1P42100_CAMCC=m
 CONFIG_CLK_X1P42100_GPUCC=m
+CONFIG_CLK_X1P42100_VIDEOCC=m
 CONFIG_CLK_QCM2290_GPUCC=m
 CONFIG_QCOM_A53PLL=y
 CONFIG_QCOM_CLK_APCS_MSM8916=y

-- 
2.34.1


