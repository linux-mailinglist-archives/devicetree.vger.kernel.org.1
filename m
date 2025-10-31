Return-Path: <devicetree+bounces-233712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 732BAC24ED1
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:09:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C28631A24644
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:08:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7007347FF5;
	Fri, 31 Oct 2025 12:07:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gN1t8NyA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ja1MbekQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10530347FCA
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912458; cv=none; b=N0/TdWJjfD+06LkdL6LgOg54IxK9rpEVKjnBuAuNNstk6bqymdMhXKRJ1yLta4hxyUo+HtGtKT+zpssnmvA+zWCfV3ELrGPM0Ymu0eNJU+Yu9b/PEgVMqBMwqtxpZdELdk6b7KKhHh+p4EY3klvT5nOMARnRmvYfbJ/G9EJioQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912458; c=relaxed/simple;
	bh=tBK1qwBUvRQMVKV0Br5+JUjYr+yEhU8c8RDgQyKsT2s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=V+P96zu1PexLl6IajW2nBIUxk/xTP4owWot6yQh8eFUy92/GBVOTcbqsiwby23+dr7B7LMYWdVmB70m6sjxTHZcxg8kt+/CZ5WoTRAa26K78jWRoYZvXanzigRPOyL93wE8h1ds5jfAp6t6haZyABL10bRxbEGq5ODD4ZqGE4pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gN1t8NyA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ja1MbekQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V9tGxi1513338
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZWwpst+Hrx7
	G02/RkAKzDN+ldfPPWqoovAXsun6iEuQ=; b=gN1t8NyAcBVi60Vvai+eb/AFnpz
	mJJrg9q+PLn6babOQyCZWdbP99SjWSpjQPsNxXaK19GL5a71MZPwB2zID1xwtgaB
	xzoRUsQSggjuuST1LjGO7ut4Qkcyj4fMb63cNkSJ0mSmCcj3FTbNFaXXJtBatJge
	Wdf7dU49CLdVkEhiPXAM2fIe+LC8gf1OtwEOALxgeU4wlEhBolBdlt8uiy0bj1dH
	oJbcykGiZphWIB670vq0K0KxRKEjn3rDEM6OSHyuAabtdu9yXPz8/pXP9jgTBYfZ
	WF33jk+EZ+0OGWF6aJo2O7hJSzSPApNcRAUWm1kzFVurV5D5GYN8RagFOgA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4k69hkhr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:35 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eb7853480dso55265331cf.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912455; x=1762517255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZWwpst+Hrx7G02/RkAKzDN+ldfPPWqoovAXsun6iEuQ=;
        b=Ja1MbekQg1Zs3yQShBeYdzUqi0r7QixB1al9xwafsSl1EOR5XARcm8JRxScESc+zyb
         oldJ2ku3MzwKAm9ApejYX5ACx21UArsLB/tV/i4z7CmVYNhaGCSawqL2yrFCY3JSXCmh
         28ShcBP/39PPYk7xlDnyjvNR58RUQeBhJXhUl1LeqB6Jy1ZI5NWiBL3RfeLfGZEneyJ8
         NTGj2sNYEgQFiIl8HnkAcMoJch0kTGfWW6S2CgR5cMJpoIUBAnvsW53VcWzuMKgHbjC7
         8Fe67EtbTxi6e5uHWgaiKAzsKwMTHI/1XyIB81JQFoNw3LdJTbYXDMtxtON+BNWb4K7i
         Th4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912455; x=1762517255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWwpst+Hrx7G02/RkAKzDN+ldfPPWqoovAXsun6iEuQ=;
        b=wrjNjUgV0f+QEn+fA1yLPEcv+Uq5cLduMA1sXa62feD/xHtuD+O4JLEN28gwUzyLKr
         ltEn36UBfIkQYWQKwdgZS/1GxeEWkR2qgV59J+I2fXTQLDSfx1vTQB+hoFFqQD2v98AG
         fzULZJdwUYSR29s4uHkkDY7ruE80uSctwIroDIJMYGx6DExnXc/j/7qDDZjvInknCg/G
         O2ZDW7jIjjdB6dTf91GuCpwo4dv1LlaYfqVOzw1Y1ELWCZNbeZhM3D5e1ohAyakXl7IL
         m8kSUlybsNAFYokBvDKdEWUzecF3qYqsAobv5mjrhq3FEJzqvIZF1s/dlpYRDcz2UV3Y
         sJJw==
X-Forwarded-Encrypted: i=1; AJvYcCV+I6/bvT3hxQmQ5SsR+pIxynBOq/b7xBbQjGwROsSKhkYHatP5r0h6h779mQtLx50FZev1oRjEqAQk@vger.kernel.org
X-Gm-Message-State: AOJu0YyZShbwSUFlJSxT7nulH8Zc7QpBfNWtt6QciQSpydHIbEYA0L4+
	OoamwS55AUaO+9t61yUFFEaXZR26HSL8WSq7+LLw5/p8gloQXvKKNKcr9E57K+7I9wwxl53HCma
	hzM+0sMPifOp5TkBEAp7D2v582uVVCSVVnHZlIcfeugpyk4Xmv91G5F7TJpKgiKbP
X-Gm-Gg: ASbGncvOPsuLczLRBh/JByIV23kKSok+6QXELvGX9rGiiCx1iDbzbzlhPMSuOY3sI4a
	36jw6iVm5tHnK3c2FuiqXvU6FFxHywNg6ZBjSnjXuMDNhvvLRyE1V1OppsUdA78qWtFNCMJ2jOT
	PlKUR9Y3sZ973c7HeWvuhc5DycY7fllZA9Y0P68a/hFWhyrmytOD+55rDVZgQjaU/xEmtqCSUcX
	LEkilo6A5wPbRxwR/pAQvIU5ekBiqZUR80DxF360ONeC3/8a9duRRJgGgD83zchE8YKmF+YE193
	f7pd7i3Hgg6kem2vlX4yBBtGaZg4U2P/VKII8w8IagSu5fyuHXwgjZCwHci7wgUOeDa8A8G1aqf
	Ln1/YbHtEwSPD
X-Received: by 2002:a05:622a:1f1a:b0:4eb:a3eb:2ad1 with SMTP id d75a77b69052e-4ed30f9c8bcmr39360891cf.53.1761912455243;
        Fri, 31 Oct 2025 05:07:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFubrQw4XO/dt+yCzz4q2Xa+aUfqymGqW7ebuZTqajutjz+f81U2jcLSjc0jlESDX5Kqxd0BA==
X-Received: by 2002:a05:622a:1f1a:b0:4eb:a3eb:2ad1 with SMTP id d75a77b69052e-4ed30f9c8bcmr39359921cf.53.1761912454522;
        Fri, 31 Oct 2025 05:07:34 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:34 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v3 1/6] ASoC: codecs: lpass-tx-macro: fix SM6115 support
Date: Fri, 31 Oct 2025 12:06:58 +0000
Message-ID: <20251031120703.590201-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: HZv2aleH09KVR5uVrq5l4s4bQzodrwCr
X-Proofpoint-GUID: HZv2aleH09KVR5uVrq5l4s4bQzodrwCr
X-Authority-Analysis: v=2.4 cv=OYaVzxTY c=1 sm=1 tr=0 ts=6904a687 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=9D4bFhRDwPOLDOHaW_wA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfX5gnRPc9k0pgW
 zYxVg75wMbv0v5Hb/iuYOW+6bTXBDxDZgYaJ1Ljt3+msGFYiEIQdPb3vzcqr8qm6PjqyA5TN1pL
 Za7y0kS126z+hmz9lCwvUXCi74T3eQ0Cnm3wc/TUivw5nio0kxNchD+j8dmdKFknc3QH7U5nHlh
 SOTuopbaXaGvn8ydgXnhM4fMYu8B55Mh2wt/W0Rd+bg2htQcjCeDGRZPVQZoVcHCNlplQ4mUvEx
 BZTz1JL7iMz+K09uPrA3ZcnW+A55RgYK669ztzjnHNj8dPppGKdlkz7D8QnXb6q9kIcizWRnaYk
 SWVfD4Fs1m9IPQmV7VZExmnDv7TIGYzHxp+6KEMhVFDuFcJ63Th17xXOvwrE2Jb0AqL5/CW38cK
 JSAp1Xp7KuvX9JdVmhllq/RSVGQpUg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 malwarescore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310108

SM6115 does have soundwire controller in tx. For some reason
we ended up with this incorrect patch.

Fix this by adding the flag to reflect this in SoC data.

Fixes: 510c46884299 ("ASoC: codecs: lpass-tx-macro: Add SM6115 support")
Cc: <Stable@vger.kernel.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/lpass-tx-macro.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/codecs/lpass-tx-macro.c b/sound/soc/codecs/lpass-tx-macro.c
index 1aefd3bde818..dbd8d0e4bc75 100644
--- a/sound/soc/codecs/lpass-tx-macro.c
+++ b/sound/soc/codecs/lpass-tx-macro.c
@@ -2473,7 +2473,8 @@ static const struct tx_macro_data lpass_ver_9_2 = {
 };
 
 static const struct tx_macro_data lpass_ver_10_sm6115 = {
-	.flags			= LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
+	.flags			= LPASS_MACRO_FLAG_HAS_NPL_CLOCK |
+				  LPASS_MACRO_FLAG_RESET_SWR,
 	.ver			= LPASS_VER_10_0_0,
 	.extra_widgets		= tx_macro_dapm_widgets_v9_2,
 	.extra_widgets_num	= ARRAY_SIZE(tx_macro_dapm_widgets_v9_2),
-- 
2.51.0


