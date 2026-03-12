Return-Path: <devicetree+bounces-274692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mCmlIJvjsmnyQgAAu9opvQ
	(envelope-from <devicetree+bounces-274692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:02:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5EA2751D8
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 17:02:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8171C3055075
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:57:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672FB3F23D1;
	Thu, 12 Mar 2026 15:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MKSmmZEL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FPfwhq46"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EA83F2116
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773331012; cv=none; b=N42aTuEPbL9eGzsb8utjlmF1Ftqr6iXwUQyCeCyWBPP4iIVp/TlIAdZgb3dBGNe2+RuvyaDCI7XOiAQiMVS5QMcbLkJs1ELurAsr/mU1OAK2oUv74eK7JGkHZwwsD2loeHn3QEnpEi5dQ69dL6k0Etom+tFzhiwDot1WQMSm/uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773331012; c=relaxed/simple;
	bh=jXkw/Wx9LLwezVPoc+CCH8yu7sVp34+2DlmAMLBQoNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eXomEJbreUvpPV186+LbP9xKTb/wtA7IDaWf7wmaxf1dCaOsouB4y11oCogW+nDl0gkgucn1asVu31HChhkJjPJhAv4gSQuXjfMihl01bR6S80Izepb3cdF/srQpoEDa1I7M97bUxA1TpCrYQBLf4eP12CnYbu3a0kGc3OVNglQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MKSmmZEL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FPfwhq46; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C7e5wY509874
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ITV2Z2FKXxhj1Zf/PcEm6ursi3fSbWkI+jtZ69OHRy0=; b=MKSmmZELWkqrzc82
	VVdXQCxHrKj6h1fkgVW7xEziOdAaeW892q47NHvMh5o5vZgPFyANK6Kfx0GeYZDd
	r8hMy/oiCTgzLFQ43UJGaskSDJItGQM78Oum/EsDo1YMHLB5zZYI2t91G3cQRqKn
	m8dbh82LdZH9s2nKAuI6lfejmUiVv/AHlgB103a4nOnxDCaImJS6un2JmJQdgdJC
	3C8nqOz9Wdkno2giyTb43GdI54uAv/5BSR8vpxh6y+/C5RcqeIjCTdKUvOb3ttM9
	vLzh8BuKotB0vrNw52DUHpLr07V0gW+b0zgPo5xaRV0gADT8I6P7I/SUV/oGMoKz
	3xAQ0g==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cus9w1axt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:56:49 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-35a21d5246fso61023a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773331009; x=1773935809; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ITV2Z2FKXxhj1Zf/PcEm6ursi3fSbWkI+jtZ69OHRy0=;
        b=FPfwhq46lAV1BNCarGfU68GPhagp9Sjsr9jrqP2FxNND+hEIToXrQHMUWWF+BUR7wy
         MiVtqAsgrwKeC5d+DnRaJiTC4SjY9wPdydmJC1+Lglie0GIqK1xTiDkB49hkOtuuvTPg
         PIYfXTGgRytSpCHzQDomoHkNsm30Mr+vbs3tOQjSTK0iW6bPVp7c7qsPhaUn41ypkUYU
         WVjGClEr4Zp0FhypgwneG739n6xaL/l8YUO/oCNQvEnIHWf8QsRdS6X1jtmJcx89AgjN
         33n9Qr613ruAkEWwfV7Xeonx4G75v9s1TLb8JwuFf3ejF9Y2NAYSGgO5bOfOrbn4sL14
         Wm/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773331009; x=1773935809;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ITV2Z2FKXxhj1Zf/PcEm6ursi3fSbWkI+jtZ69OHRy0=;
        b=Ij244FZI6tgpDq2cUEgy1XR+odlhzS6EmivIlV8kTivSWzOzegneOq74d/45OYT878
         cFVMsgZr83Gt5H8jA2JHTYYlswd1oeUpr/345uoRr9Dbu0HNEMVZ7gQyvtSP1W+i1Cw6
         1dY/5+oN+4vY8rhnKTH7GEK6g4NB6fcgaDs6fKsoxY72SKMCdDyemdWNYbtxZBGSAreR
         n/4r/lGbTt1cpr/Qa9eHqUteI1bLxfSvYtGgNTzYkOjeUvFGvEq2xi1vPI4mtyz9OYra
         +ai14/X3VmkeLyEGDKh8KHk4E8LxYeaV46V8aqJD+CjDhWqkRoV7dmZloqhxCURZqcu5
         8a2g==
X-Forwarded-Encrypted: i=1; AJvYcCUblboAzICWIJ8/ezcutfa3s0PdJR0HCPoKMKUAWkwXj2CJEXlulf+4Y9C/Mn5hmCMmmN4oqDHE4Erp@vger.kernel.org
X-Gm-Message-State: AOJu0YzsdK45fJYCR48mR7BwSl7OKp8etQXd+Sw8G3pMDGukGlsfNltp
	Q9/qg1aPpn3h8zTPfdxQCrEfBnLJBWyyT3LT3Kdkl4fBpLWPXqnVpGu4/AnzjOrcGCmoaUCQmA3
	mdqMT6mCOFMeQZeBwng3hU8ZDTcBRWgo7ItyA7vaA6UsPRWsotbt1Nfc4BRRnUT4f
X-Gm-Gg: ATEYQzyg+3BJt9gkqZUIGslBL3I1OZbL6vJ+DxfCmoQxUdxb8jQELDSlMGWMEuiV9zX
	nXyrNLnBOKR5nD0N3ErLmL92iglcq1y/3yICoGMNoCwZArXsMqUkOou3nrpQy7FFPVnfZgzq6zP
	cNsqsNjn2I6b8U/a0QZOmkTi9bml1GOErAW9WGBCqBbaoAAmxdpqjAqSOUTQ/WOBg28EUK+UioL
	gTeCfRjiSZDbFslJXi5RQAdauaKCiFE6w5BDOytLgkiH0FRJ+ra9rj/gpeWwJRDFTEoP20b+ZV1
	tpKHjQVX/Oh19KsBrmBEj5ZhQ30DNaXdvRqQpgR+BcrbJhPUgOdcFPJ+GBWfxL2fKDEG/pgKk7D
	69sBTk1Aeb2/uYQbzmIPQplTFGz33r+xjAtuysbVEsMnnqDxqpw==
X-Received: by 2002:a17:90b:394f:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-35a21efb0eamr154159a91.5.1773331008824;
        Thu, 12 Mar 2026 08:56:48 -0700 (PDT)
X-Received: by 2002:a17:90b:394f:b0:354:a332:1a61 with SMTP id 98e67ed59e1d1-35a21efb0eamr154131a91.5.1773331008376;
        Thu, 12 Mar 2026 08:56:48 -0700 (PDT)
Received: from hu-mkshah-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c73cdf254acsm6067852a12.11.2026.03.12.08.56.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:56:48 -0700 (PDT)
From: Maulik Shah <maulik.shah@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 21:26:35 +0530
Subject: [PATCH 1/5] arm64: dts: qcom: x1e80100: Remove interconnect from
 SCM device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-hamoa_pdc-v1-1-760c8593ce50@oss.qualcomm.com>
References: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
In-Reply-To: <20260312-hamoa_pdc-v1-0-760c8593ce50@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Thomas Gleixner <tglx@kernel.org>,
        Linus Walleij <linusw@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Sneh Mankad <sneh.mankad@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773331000; l=1121;
 i=maulik.shah@oss.qualcomm.com; s=20240109; h=from:subject:message-id;
 bh=jXkw/Wx9LLwezVPoc+CCH8yu7sVp34+2DlmAMLBQoNs=;
 b=myakjeEITJ/H5ts3QaWs3y1Yjs9Hf/og0xdhtZ0vdfIR3B9DjwPvxYDIcaVqwi56hpizDmwpe
 kWo1sEP0nNUCyu2G52iMRsICwZ9D9XGY4mAslRlKQOjIrYMonHQ7YAJ
X-Developer-Key: i=maulik.shah@oss.qualcomm.com; a=ed25519;
 pk=bd9h5FIIliUddIk8p3BlQWBlzKEQ/YW5V+fe759hTWQ=
X-Proofpoint-GUID: wS-zXKK_MybmmGlcBTfMjt2dYTvgk9G4
X-Authority-Analysis: v=2.4 cv=IIIPywvG c=1 sm=1 tr=0 ts=69b2e241 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=CuJFZRpwjaNh95NkJR0A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyOCBTYWx0ZWRfX3kxpQAGa5Lrf
 bYZyfM0nAR+Vdow5Y4md9XxV/kDf3vgop87D/A83FkIdB703UZnimxW0OnJ7a+j8zcTtBQ8fOF9
 Ypk4qFNj/kPSL/LAE0OJSe+ROZfwajpmcjN9IfCtBuWcvnHkPStlyVT4c/IE0CJG0p/ej94fVWP
 VAK10N4Yhw/CNyw9RKEAVwOSeU3yoB0Dn1uYPYeMqPnd2JKqIONfROVM2kA0sZsFDyaqxqr7Ou0
 t0tPjh65apbMO08wvXSKbh/b2FrzjE0nrXMMGyah0LOzLGScRmaPDGqLKDLnEf6QQyovmGOuvOw
 46TAjyILTp8xc2nT0LLVUI4WIYocS37Ab6yr+WwNQa5xRKkrIX8egf5uY7FK/FAl5qg8Ns0dRU2
 iBjZDoIYBw5+1zfb1WtPp4GwcYK7jjS+EC5gVsEXM6g06P8fVcfA6bCxs2Nao8LM2k5uWza6TxW
 30R5rXAOpD2iuvym8iA==
X-Proofpoint-ORIG-GUID: wS-zXKK_MybmmGlcBTfMjt2dYTvgk9G4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120128
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-274692-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maulik.shah@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC5EA2751D8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Interconnect from SCM device are optional and were added to get
additional performance benefit. These nodes however delays the
SCM firmware device probe due to dependency on interconnect and
results in NULL pointer dereference for the users of SCM device
driver APIs, such as PDC driver.

Remove them from the scm device to unblock the user.

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
index d7596ccf63b90a8a002ad6e77c0fb2c1b32ec9c8..ebecf43e0d462c431540257e299e3ace054901fd 100644
--- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
+++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
@@ -308,8 +308,7 @@ eud_in: endpoint {
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-x1e80100", "qcom,scm";
-			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
-					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			/* TODO: add interconnects */
 			qcom,dload-mode = <&tcsr 0x19000>;
 		};
 

-- 
2.34.1


