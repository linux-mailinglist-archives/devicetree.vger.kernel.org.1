Return-Path: <devicetree+bounces-271472-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WF5VK3BUqWkj4wAAu9opvQ
	(envelope-from <devicetree+bounces-271472-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:01:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B6B20F331
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 11:01:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 81EEA3070DD9
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 09:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFAE137BE78;
	Thu,  5 Mar 2026 09:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Si5A8wQk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XB+l3doD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA85A37B41E
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 09:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772704118; cv=none; b=meIGxt9ZKkhY3eAFRWgYqDy9/9lvB7srnxX6eyHmBaSwpTNrTgtUOGxlh/HGM9Grj5UCqWp6KTvhN4xoTR3/aEYTKuhCeiCkf/rE3yRQydv20nDlKcnWsMzd2N3FvT8rBv3F0HwNTLFPe7Bx3piRCoEaSEH+HAeWFcQWnbLh75c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772704118; c=relaxed/simple;
	bh=i6izUJviyArX46Sxz3psV8CYflgOEvKVmFWmHyN2UJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IybPG9oA7PFwq0yyujvKbmF7bQMY9lNqassXO7cFKf0Jp97TZfG5im7QB07HJvzo4nUWDPVrsl/zlgPMYQ4OS1MV4D7IWH0EoJ+qs/SAImcs8S7oRpA3Wf8uHwppvhwBbW+BvfCC1Xbo/FwAMxViSBiX8GjTWKvE04Dh+ihrjj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Si5A8wQk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XB+l3doD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6253B63F866516
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 09:48:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	azIj86InPC+CXN10XsD4qgZL9tAaO+Zo/OsdMtMqGik=; b=Si5A8wQkVIgZLnx1
	siu1KnQufSbALw07L+ODCEEgkm7qe5QlRfWt0ge2kpNv6ovG0sMH6lHz/4AYyHbs
	FHvsfOZoYLuqcgA0D6/4ddqRoc4cdAmYhHzFzHUaCkciVmz9aMAem9IZXf1C+wYR
	rJAxk01tTKSGJjHusbHf4rwFcJyZ3QH2fKtwGiIQOUSMlYnzUdLGvH/xNnI3u5yQ
	rGGr9OFZdvLg4uwvHCvEh6YrVUv8N/YAhimUMXhDTaRZ1N5VPglOlENuJvxdfTqP
	B/jpEt987CcmwUT7ffiOx+4BiwfUr6SiA4+rR81NZwXQcNsKkwPxOfsnn3pFZTz6
	yNhe5g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq1pk17tj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:48:35 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50341fddb89so551501791cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 01:48:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772704115; x=1773308915; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=azIj86InPC+CXN10XsD4qgZL9tAaO+Zo/OsdMtMqGik=;
        b=XB+l3doDbgS98znvECBXuTKJxayzgHj39zcvO5ERsIrQIApu0pVOV7r0I5sZ4f5VQ6
         YZMyXdLWPaSSkBfHXlrOnjJV27KG/teajSZQxN2NNSTyAPBzTxHgINaBKz1CqaUnMTIR
         YiKEsghsDLtJiG3N+iSY3K5HmRXBQzyHEX0NuiZjbpNNKM/TkFb5BpqjggmESmCkVZjH
         DQK4TtXVLO1hX1U2CKYncqIyC1XLhDH73uNffhGZY4EdYGyCRKGcOKtxbIBmp/NZaOIV
         CsrqISlrxKJjxBVDxHLR87mm5EMB+zYuFl4m0ULv68VHeKueoxcGOUj2+ETkjD6aCCct
         Sugg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772704115; x=1773308915;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=azIj86InPC+CXN10XsD4qgZL9tAaO+Zo/OsdMtMqGik=;
        b=Nyik4VWuv/RaRTR/uhQ9wNVfk6v3UG/zCf6VYEBmV5beNnrWtXPDk7H/7KPetVIERc
         1XCcIyNX9CXQNtEjc3I3SmNw8us/DrKeUjg03gKyE8K2OM31XbDOuMQ4kGNkXlq6RhK1
         sdBjrIZfbbDnAQcA1/oG94cbNTwxOHolQGv1kw5C/Bh1595oel3pmYlyw/YGgLsU+q6p
         clp5BoF1Vmg2IKnZrAEBBm5l7wQXkwKQbkMsS06BEVopf9b16yON8ps1qpTcRC5FUmog
         K8PSXHEVjwXkEssEfJg8DlUUGDRrTqqJzXnalcwsbBLNVzPO1N/+VRaJwBxhNmT23das
         vkaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1gsWPR9w6eh1bh9QXrhXKZQK68XnrklP54KcolW/XM34NVo8uNODDQpLrOb6ggdTqqnkjoujPnH/w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3MFdReFwNYvze3iBm3duBfaNiDv53wUHDPAJy+sYH8Kd0rF3C
	ZL/9u39UWWyyssKaKzQwyY/TfcBuLz8SBBfjVhYh7f50eqo5S/NjP1Z7vBrLn32pvl1FGJa3enn
	lTAtdlsbM1DU03SvAhlzAtb4ZuzRb56AYcuzwcDEgDwCbuXZQhEe39qWCfP7Tqk7A
X-Gm-Gg: ATEYQzx87nZIaU1Z+qXEXzRiCEU0mwOCTE9NhGUkw5ukHGdiVyKBAJbj21TymtGxELP
	fcD4T4SRJ33yoF0/Ajqvq1dT79tOVweUVJFgwKPwPrpWMtFVNEPgjEOgd4RZGkTtoW6Op7QkWBI
	sVkIjhQQm6hoyqEcA1nERaqdWXUrLGwBYFl9KRzUHTTDbGDFp6iiyeMqvhgOYVRnvcA/heXwLtb
	0dzHlJ1N3axyO2eIOGPufTdZuwHj+pAvm7Vq505DESOqKIsZ9ygd2Gnp3fDcDE5VqWFemlEeRQt
	rD/9N/9drQtSmT8Yt0HQ1uu5XKCt8Y1w95ycMgVuUgCnMStrywwy6byflbbQz1JBYIIrUQutF03
	Kr0EFYhcDihjn1L6zw2BIZDnsTox/IL3K6UaNK0FSH3nsU1kiVxCW2TRdsdMA3NoI0UUfFsCd9n
	E9PIGVxqaFvmdu
X-Received: by 2002:a05:622a:354:b0:507:3ee:23be with SMTP id d75a77b69052e-508db25dc3fmr65562121cf.9.1772704115070;
        Thu, 05 Mar 2026 01:48:35 -0800 (PST)
X-Received: by 2002:a05:622a:354:b0:507:3ee:23be with SMTP id d75a77b69052e-508db25dc3fmr65561781cf.9.1772704114585;
        Thu, 05 Mar 2026 01:48:34 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5074496300fsm177126211cf.2.2026.03.05.01.48.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 01:48:34 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Thu, 05 Mar 2026 17:48:12 +0800
Subject: [PATCH v6 1/5] dt-bindings: i2c: qcom-cci: Document sm6150
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-sm6150_evk-v6-1-38ce4360d5e0@oss.qualcomm.com>
References: <20260305-sm6150_evk-v6-0-38ce4360d5e0@oss.qualcomm.com>
In-Reply-To: <20260305-sm6150_evk-v6-0-38ce4360d5e0@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772704098; l=1336;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=i6izUJviyArX46Sxz3psV8CYflgOEvKVmFWmHyN2UJg=;
 b=61XRv9AhrNpd1bojD8c5P7j8kwKYTzIdkkCrl5q3FdMqWSZvfOltv2e354lZ5/0tJ6DNK/Xby
 xvWi93boORvDrN4S40rT/4FyP90rUd7qmkTAai4hPS2SHvehiAcgs0z
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Proofpoint-ORIG-GUID: Ye_QbWp8SVD4PsywkGmyREZS7WDs3ovt
X-Authority-Analysis: v=2.4 cv=Gu9PO01C c=1 sm=1 tr=0 ts=69a95173 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UHGjisO4C0SBheCDbiIA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: Ye_QbWp8SVD4PsywkGmyREZS7WDs3ovt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3OCBTYWx0ZWRfXy2NsTk89FPuT
 Ym2Wz1K8QZpFb5cvlQ+dGi/E+9KANZVpneYrYYyD+IgidFTqLugEd9IsXjjgEXlrwAmh4fTSq4K
 9mvI6aeyEVW0KHvh7/DWDjDHidJ0I4+hM56nUrPvOu7RkX/OOvDvM/J2HqGU927wL3KH5Z0mZ43
 +iYGzXQ4AmrL4cyXksTh4JFPJYexpJfIPkMF3J+PoXXwIlhAhtNGMc6E/v2u+fn0IAXNXE7entc
 VyQqV7UhWgatiJKICvthz+d+N1LNJ/IA0SkfsjVVLgW4wrtPRPtwj0cU4DrUkJiK3Eel1vvTnEp
 ALDGJTqpA04ohffu4NExRP87ncdNR99+fJtNOEh4llkndCW5v2mXRCGOM0d9cFlGtyO0UkMO2mb
 eB409VA+dWPW9m2FWcgIEvuI4GrGF062Dvl0ZWLFw4ChnDINhKi8oD5pEqB2wSE1lqitUOw2G37
 33EVVkNONENR6kYZ9MQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050078
X-Rspamd-Queue-Id: C7B6B20F331
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271472-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,gmail.com,linaro.org,pengutronix.de,nxp.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	ASN_FAIL(0.00)[4.211.64.104.asn.rspamd.com:query timed out];
	RCVD_COUNT_SEVEN(0.00)[7];
	RSPAMD_EMAILBL_FAIL(0.00)[loic.poulain.oss.qualcomm.com:query timed out,krzysztof.kozlowski.oss.qualcomm.com:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenmeng.liu@oss.qualcomm.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add the sm6150 CCI device string compatible.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Acked-by: Andi Shyti <andi.shyti@kernel.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 399a09409e071b7caad8df7fb831c429a8bc7750..35d3a0685ac4468d49e68621d0359dea1988cbcb 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -34,6 +34,7 @@ properties:
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
               - qcom,sdm845-cci
+              - qcom,sm6150-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
@@ -251,6 +252,7 @@ allOf:
           contains:
             enum:
               - qcom,sa8775p-cci
+              - qcom,sm6150-cci
               - qcom,sm8550-cci
               - qcom,sm8650-cci
               - qcom,x1e80100-cci

-- 
2.34.1


