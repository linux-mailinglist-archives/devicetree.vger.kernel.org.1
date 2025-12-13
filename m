Return-Path: <devicetree+bounces-246246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 927C8CBA79D
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 10:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2C81330DD392
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 09:28:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933B62D661D;
	Sat, 13 Dec 2025 09:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EIEceDHj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OriiyHrG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7CC2D739A
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765618090; cv=none; b=HBc0xzWSg4UPoA7k+4x0XWL1MQ9Jq6Gqsx4z4VfXBg/rLgGYNc7MvhGQ3cjby5BoODugUMN/tK0Wjuk+S4W8SZmToUqHC3FG2xthDypPhi/KhDOg2u2P8dFub3c0H5Fb4b4r/LtzvlzAk5cDsTR500V0mn4MBk3emuNTAlZEOxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765618090; c=relaxed/simple;
	bh=iJAAN8nauez/jRvVVD5QnyIMXaqxvcGQHl1vpdIJPa4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O0vrlfcFLVC21xB9BWU3yY4KJrqch/YxV75aREEigrfVyxfcpT81e71NBPmrGS0wHmpeVgHi8ueYBzCJa+2ZeCV2OpWZFxyGbTEvuMPTDAdji3rCG7iH1S2wC6DY6uMcdHzPWpI2xmii5YrqyP+WcjRZcafjfofzmf0AAaZfe90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EIEceDHj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OriiyHrG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BD7hX582024479
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PdcrGwsq+KrX2z6WO/OtDq28WPsVepKHgRM9yDmh11w=; b=EIEceDHjLg3QA/Y/
	b6Xvt0oORfGZ0ViCMr4QLHYILnlxQsYT1605H1pl2e7ocndgoSN/Az9k1mZ7dn2s
	Tg7kQIA3RWQTre9Rf5DEFHbXXW3quYp6cDKvX5YOQWV3HJ+EO/pTdHYoJGvWSqi2
	aJG5oikMqjKwMvcUEa3EhWT5HipMyHhjtomFJN5SWWejsjIktRrwCTzym9+nWjOa
	VMD0/rnnRbqIJNmIeV/HVuLvqa+Q8nK3kUt6WlyDZFqbeLOzNULF05on2NurXfvl
	eWHoLyWijej1wft5KtxBusFXDk0gVLxfGNmOLTorLyTNZQ8/MCAw/eAFJwJtgcti
	4jnwjQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11e7ra28-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 09:28:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1dea13d34so9771601cf.1
        for <devicetree@vger.kernel.org>; Sat, 13 Dec 2025 01:28:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765618087; x=1766222887; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PdcrGwsq+KrX2z6WO/OtDq28WPsVepKHgRM9yDmh11w=;
        b=OriiyHrGeDRw/ioaqJ/aDiR5rNUlPz2X5vPmT/ueNZLo4jhpeHIu9CAW/wAWTYtwaT
         DCBGyIkLD2DOU7mCMRjaNV42MtvusH9B3hamGqNKxetbkr7DLEAV8jkH+CFt4hDYPyb6
         5zZJEgeNfeUzcRfuBXZamaTuVxyBCaaF3jWMsDy7Prh9CDVvrgRBLfmzXBRXfmnleD2x
         KvIHiGJx775ciZmYryEaUWJVGPowI8WPLcv0ELQsO6F3GlzxW1CshBbQnbZCJ4y8ZVoK
         GRjBePHgb/vkkda1n39Oo4qg4H0DkD9pfuQkdtjwiR9zcikPxZh66ku5ht8vzhmkTfhL
         4xMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765618087; x=1766222887;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PdcrGwsq+KrX2z6WO/OtDq28WPsVepKHgRM9yDmh11w=;
        b=DIZ638soKehTHNK2EDs5qKzf2cjUjt7+ycHbubTkMDEy6fLvnI059JKg9XQw75itNF
         SqlvEzjxusVUNaWnhl0lbHjmdIB412OUFiD1FDCWKmWixFnVqE4n75VtBRAvOJo+cSf+
         I9iWZCiK88w9wxnSGpSV27VcQpe3Zapp/LqzfQpAOjtdwBJcwF9MyuGFgs2D4HVIg7+N
         +bmhuV8vw3mxccPnFRmJaircsQJEWBao2zZhCVLLHgs0xVA1zKYwy9JWWDcphLohPaYm
         aZF/HsPk9G2x/Y/3h5pF8IlPjRCCRjQaQSCSl0smHtr6VeyXMAWkPTRvX+HRJ2Ooa8XI
         guyA==
X-Forwarded-Encrypted: i=1; AJvYcCVEHO7PAnibD43x1namkn0CfMLxTf4gntyfelGsviXgt5USqq1I+TrgAJbx2MzmHZjNQGgk1A4dEwCU@vger.kernel.org
X-Gm-Message-State: AOJu0YwHCGu46vTgW8YRbBQa2bB2F2yJxeRdF8U8IwDdFWDVfZw94hkX
	XW4V7QP6NpcUXqes8ASE7BVochP+Hy+alID7jiAGd9HxHZ4CAX2nhAmq2S/s/QQLIZ6cDoWqLTx
	Fj0Tcageu+nXrwkZejVKJ8l+i6N+Do/fho+l301BzeV5Aq08DL6ygu7jA0bkBxGsD
X-Gm-Gg: AY/fxX7YVvOF0LfHL5WjQRT3NVafqS7t1M2yH8gkytdOYZPtte1qiTVD79RD2FAecpF
	H7mzT6nWkRs8fzMlzTNXYbWSbglea/Ngft6tvOO2S4swb+yEr0GrcfQrofdL+Zj5AiYOnobbvDb
	elS1riwu11YEMvIbCXh220fyNyDGyM8FI92MDRjAmihCAlwhqnZ1HkTYAx5qh6udEh2Xa/AylDd
	d7RL4y4E34xdeebxCyVbe6RaABAoQO7DJyK3gRK6WkqrbnjCFa5Mr/6Z/U9lvYs36bnCVOq7W2B
	pA1jVxbEzfDMDz5KMftiOWA7NgK19HNr6w1KqtKYcAJ54ywpuGVh7C6IP4fZBcMzOGxoH3zDnyy
	DqUdoMarcpNMh8VbvMnv6X9O2pKtnDdcpuMVQc9IM/U1ylKM9Q3PwybkT8SMRHTP1jkvGrOwxAo
	PMas5+M9ItY4NjpTdnt0eudws=
X-Received: by 2002:a05:622a:90c:b0:4ee:42e5:f5ae with SMTP id d75a77b69052e-4f1d04f967dmr67030831cf.25.1765618087412;
        Sat, 13 Dec 2025 01:28:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IETD/CBGamP/hoACINrQT2fLmNxqFr0SXDmtwS+FKGa24K9T3KyT9GIZpNU6UOG3+Xnc/RKPw==
X-Received: by 2002:a05:622a:90c:b0:4ee:42e5:f5ae with SMTP id d75a77b69052e-4f1d04f967dmr67030601cf.25.1765618086846;
        Sat, 13 Dec 2025 01:28:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f3199388sm2882037e87.90.2025.12.13.01.28.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Dec 2025 01:28:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 13 Dec 2025 11:28:01 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: sm8250-hdk: specify ZAP firmware
 name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251213-zap-names-v1-2-c889af173911@oss.qualcomm.com>
References: <20251213-zap-names-v1-0-c889af173911@oss.qualcomm.com>
In-Reply-To: <20251213-zap-names-v1-0-c889af173911@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=894;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=iJAAN8nauez/jRvVVD5QnyIMXaqxvcGQHl1vpdIJPa4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpPTGgD26RgOQBegPmWO00a7qdve5EvwDtbPmS/
 OFyhBKzv/+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaT0xoAAKCRCLPIo+Aiko
 1fKnB/wKYrN86dcmdLz9Pm6dmHnxEcnZEfin1VaRfSWn6tyTi4QI8G6PLsB0RiYs8IuGoD1V8df
 WIuFwgSveB+z8bn/uDAnbOdIqZwShItkN8dZw/6+oaJFmuBKkdV05ZpzNSDFITrVDBrp0DXDuFg
 U1UdFmQPK38pWDm/RW4V/GQU003KL3g2Ph1Lk4pDv6sKmjaIlVb7w4HBvBBnD3TsngnhmYxIRuY
 Mp9lnv0jMvAf7xT1YU6qYbqDVcvv9gdXLeIYFfcmXBdC2W9+Oxaf6/MyLeDvZkmI2twdORUgJtj
 RGkRRGW2+2hjbarmEQ1fp72IqqFsDqc4aVyrSV2Z3tG++YQQ
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEzMDA4MCBTYWx0ZWRfX9qFEXh5Njq3q
 G9ocf6ODEycVuuw/MS0waMqwcUxl6wcI3zbQNjhioN2GL6vdcVBvvT/bJjlhIvranB1IdAI4qfX
 WrVALmknyuN7jSUfdmS5I/Q2UDU/zjDt+S5Wq3xGnmkaPk8v5Rp5DVltSiFnLmetkNOgdlsRTzq
 5t7Qj8r5EVaVSo3nW1FGGzdyx0/6UXbHz3J5ryyZDXkWDW/ZgxagSDw+Z275h9nG8pNzzbhwi0y
 QlWwK6PC+IMN2QIxYLav87vCdfC1xVPFgv0pD7QUVZDBskQMHPZFFvzUyjVIvpGRq+vqdy62ugP
 OZf0uXmc3CuxOI926ZzcXPAfBilpaI3BVtetLz8S4jwGobMuzsuBQWIC/p/kXvuJaWqGZGXeygS
 7IhqJu/P/Ia/SNqicNtZEaTrDZHbQg==
X-Authority-Analysis: v=2.4 cv=aqy/yCZV c=1 sm=1 tr=0 ts=693d31a8 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=DG21z3loRysKqE5jRssA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: REg6AbQUnnWq56G5dlJfu_KvVs52ePUd
X-Proofpoint-ORIG-GUID: REg6AbQUnnWq56G5dlJfu_KvVs52ePUd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-13_02,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 spamscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512130080

The DT file has GPU node enabled, but doesn't specify the file name of
the ZAP firmware, which means using a default file name. Specify the
name to the ZAP shader firmware, pointing to the file in the
linux-firmware repo.

Fixes: 04a3605b184e ("arm64: dts: qcom: add sm8250 GPU nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
index f5c193c6c5f9..3ea9d2b1a7d5 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
@@ -373,6 +373,10 @@ &gpu {
 	status = "okay";
 };
 
+&gpu_zap_shader {
+	firmware-name = "qcom/sm8250/a650_zap.mbn";
+};
+
 &pon {
 	mode-bootloader = <0x2>;
 	mode-recovery = <0x1>;

-- 
2.47.3


