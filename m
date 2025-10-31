Return-Path: <devicetree+bounces-233717-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 98963C24F01
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:11:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EA6551A21783
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D3E834B185;
	Fri, 31 Oct 2025 12:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FEd7prre";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CrFfpSO1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5144834A79B
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912468; cv=none; b=T7bCLe0/b/NocEzeO6nJTDrj/9919aSRFQ5IVuLb/8RBCvmvM9Lu8GDYmu+pwDm6btMuu9gHA+pZntBJQtbQiKCV1sl8/KA+z1aFLS9Hqg+gtbThqOEOXJgVbbKoGnNasItozoZpDh0cY1sYxxMPEndtsXC1t8IJJAKhMIVv9N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912468; c=relaxed/simple;
	bh=6qhZ2V7jPWMlO09vJWcPidbXDMoiF5TkOHsCoJUNPBc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WcV8f492irtZHlR0aO09++TO1n19fcfhwEgSPe7H9VCWL4GIQ/uZ6AurzturWNaADE08rxDMjPen63QwQoyQgZaku2Fd+9nSRy//FmKZFnneWJ+OMDfPSTgBZAoLMet294demAJ00MapdyduORmzTHj9daKyZ9Y5uLAw19aR3Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FEd7prre; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CrFfpSO1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VA3uWD2558946
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=j3qsn+XRU24
	M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=; b=FEd7prrestWyoKETHQBoerJc837
	SIWTZf41NK7n0JLuilnqqyhde9T2dgRnxQN11rk/GHucwnAvWxXkokIy2T9FlX//
	ttevhlR0MyBS5px6ojw8Gz7l+S/Gee/aNpep9DqDuFZFyCIHF630x1Y4sjnOFgjL
	vtsXq+Pe1wHgBr9CB+pMgtrvA3pwxgjP0Vh7IDfofmP6L5pct2XyT2d/SqPlJQHf
	CZdT3bvnyQXpdsPx8xgQ5U1FNHGaY/JCN7s+arDl7Ay28bRlvmr9GlJ7A1vBdeyS
	PDipplnPvKIFlCWCERinjqq1z/I1vHJYE9VJAS7YNMuGMUdU3oZpFMFd50g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4u1gra34-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:46 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e8984d8833so96453051cf.0
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912466; x=1762517266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j3qsn+XRU24M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=;
        b=CrFfpSO12iKWWwmxrKjNASW+nPAhHusLdKGX2g12+zGnQNP0sID8nNL8AjfOKLbFwh
         M0JgjIDu8YI4bFqT8Fw2dMqL48hbK/QUPS4wyuOtVtxYI4RTluhY5Ki3JosuBQvVvdsz
         0haZLtTDeWNmuLR7W4IOytUZL+qjaU8iarI2QaRhalM/MTDBqDzJnKpIn1lCNdcHC8nE
         DziCGt1/VJQpLvLbhFb8LURMT1WuyXcCMwep+TxgXFnaJbxmkTzYLmifN8eXpUToJdD3
         z8sAqGNxyQpP8laP/yN4A7oUQeuUWR4MAFlYYGar4G9OfQOzmqZzLt6vz8KHEeUHoflh
         gpHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912466; x=1762517266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3qsn+XRU24M9cd/quCxFZxsbCcNEdloWtUmT5MmDVU=;
        b=lXRVEC+BkcyLzkqeOqR1Kc9Xv7Bj2A0P6O2TtyHsewbHrdK2R0NUnK3O81s6imsNGJ
         M1oBgMwMD586f7EjoTWUDQ6YqDejkHv01FdSBuTZUcBUW5bIdf2SyvuAcR1BOW2KCw98
         GNrOO0rukM4BmRz7UgsLQ6MhXlXu5ShurW/o3z2WUW4KaKJ+ajruYluqoR1mPE+cxrym
         1kiqk4bxZs3FV3RaBHuvAfLCpB8WLFTiZwFFoHapUggTdMEnU2nCIVPxiDt9Yh7C/IMi
         se1kuZ+7uM0Z8vnYa/elftavZDlIVbo/AEYYgiV5kQoEQ4eqjL/7MVcT/YnRDMPtxn6A
         Ll4g==
X-Forwarded-Encrypted: i=1; AJvYcCW5pzYe0zrcWarZ9BkFHsfLFFMNJ3CSYCWnWq9TG0pf8Ok0Csg222iT1hF8vThoJbM5KIr8FwGz4EiB@vger.kernel.org
X-Gm-Message-State: AOJu0YyZpU6DIrG3OSyD3YGuT/VtUuazhxXrMqaQ6sa3+IE1dR3R7fvu
	eXh0T+bImgir5gtPDGWg0JMhV0P9RsiVYL/i5RRERyZAITM3X/drvFb8pSx/5pthXOPnPxJPK8e
	mRhjFh1iUycz/pnoliCMsVtUdvhgNV7TU/WEPMvobW12XjUV/sgq18dMRuUNG9UEI
X-Gm-Gg: ASbGncsG/qdOLrAaMjMVvB7CKQZItKKJdMSdF+n1MD5F6sF2rsgbtoEARFAmSGcYjJ1
	h+kWC5C7plbJ6da18L4n60WJZyNhrWRDwzW5PuURJn9JzpaKvWYD5MyKZ+iy9EiLbAjB9gCGmsZ
	rqzJXJYqBw6r3b9JA5whE9Vzr7/xm+861B1eUlleUWpOMfR2MKjBjAHyp/ahBF+eaA+gOPGxDWn
	hg5Dv1XnbzRE8ZQMoANZp2epe0dqHIy98oJDcFz26zQEe3Hv3WWgEmqN1LoKvhVpkjnoC02nP1F
	Wgz72cGoKVSDjgXxbp8MjHLTY36dOgKKtCHl3qFAdvmOCdB4e+/AUOIeUxYsCSkk6jXFeg/vZR2
	L3xjHFRY7mEEz
X-Received: by 2002:a05:622a:180b:b0:4e7:216e:1fcd with SMTP id d75a77b69052e-4ed30fb9efbmr34589921cf.54.1761912465238;
        Fri, 31 Oct 2025 05:07:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJClcu9eyN2QYo/qOUiQu7qbIyULvLlv12XdHaf3aRKwPnIwV9Hf8bBaGrhHr/S2hRkb5EXg==
X-Received: by 2002:a05:622a:180b:b0:4e7:216e:1fcd with SMTP id d75a77b69052e-4ed30fb9efbmr34589321cf.54.1761912464767;
        Fri, 31 Oct 2025 05:07:44 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:44 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 6/6] ASoC: codecs: lpass-rx-macro: add SM6115 compatible
Date: Fri, 31 Oct 2025 12:07:03 +0000
Message-ID: <20251031120703.590201-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Lo+fC3dc c=1 sm=1 tr=0 ts=6904a692 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=MaTAXlxkpdZwQv4a-28A:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: mxQUGezE-Dwjv61Lx7zzmmmR7xt5S5uk
X-Proofpoint-GUID: mxQUGezE-Dwjv61Lx7zzmmmR7xt5S5uk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfXxK8LdkTVzXpJ
 fm/PvT2cQeywoGSjx/ekxfM/T4wjZx6GhLSPmB0N3pWy2oxMsBr56yOIJTXVFNhXv8cUWCxQHtZ
 Px29x2/6BOzARkXl2OOT9dBYOck1d2SXsDnlUFFVLD/4PFhWux/rmSLHnXHYNhbefcFmsUHvIfz
 HsdfAfizIO+BlxggAfrzK9kWyvfeFGP360t2ek1+RrA2bR6BO/AnaRQOIe41VGfoS1EGtE7/sHa
 +00z+CaUCfTs72PtTKCQwadjoKeh0mCPRVqentW5lJySke/y2dESeZwjA5gql24qWAqz2v1X0s4
 O9LkQsot8v7rbXMgChxx8OEMmrx9ixbRUttvBFfmR06tib9Z4od+ghKLSP3vOBFgBFLcQl7ylnL
 kz5lJG0WUTIZmehA4VGudcqozQ8TWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310108

SM6115 does not have "macro" clock, so its bindings differ with existing
SoC support in rx-macro. So add dedicated compatible in both driver and
dt-bindings to be able to address that difference.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/lpass-rx-macro.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-rx-macro.c
index 9053c93bd44c..f889fd17f166 100644
--- a/sound/soc/codecs/lpass-rx-macro.c
+++ b/sound/soc/codecs/lpass-rx-macro.c
@@ -3951,6 +3951,9 @@ static const struct of_device_id rx_macro_dt_match[] = {
 		.compatible = "qcom,sc7280-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 
+	}, {
+		.compatible = "qcom,sm6115-lpass-rx-macro",
+		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
 	}, {
 		.compatible = "qcom,sm8250-lpass-rx-macro",
 		.data = (void *)LPASS_MACRO_FLAG_HAS_NPL_CLOCK,
-- 
2.51.0


