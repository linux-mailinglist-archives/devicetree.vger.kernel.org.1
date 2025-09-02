Return-Path: <devicetree+bounces-211738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF287B40612
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:06:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D390A481995
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57F882E8B9B;
	Tue,  2 Sep 2025 14:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X99/i/cq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E88273810
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:01:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756821664; cv=none; b=ZEtZnVTWzUirCF1PT02nwODCi+0QI9qa6Ii7UzBnpZJyTeJtlEVbY30yyAtZbOlYqPR9x6hkbIcIp1uyvKFqo/Qb6RnumKVAN257CJwhmOgqHAqJAJWeeW6O0yc4psJDshm507ctf1x5ztu+Nqqc55D0RVvlSC5asw4Oq2vgwCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756821664; c=relaxed/simple;
	bh=gEpj7b+o020sV6p7lpCzjnDqFYnfMtxrY4cMk3OFcWs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CawhLeoIODCKFvoPw0NbnImDEMU3vHtwtRK6oEg19Ziu0KB7HbtdMZ+A91qXajUzmQVP2uwhdwZmDR/0t9t6bCpovPuehERLJpC1cLztrzb70IQSnYRTUC0TRFyhNbn50jCouezANdPsxj7HmUqqHe+zBuwPR+/apF8Pcj2P/9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X99/i/cq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582BdF6Y029949
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:01:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X4nCKgYxQJj
	fMP/VUT4XYH1vbsoebu/W1HveCS5YCMM=; b=X99/i/cqbpVctClptjZ2uSWd9i6
	HSdn+KG6rJ/lqjfyYfA7BUhxLOoc6rVr8UAQ1gvLZF0lZH3zV7cehzfWwkDCenN9
	ErHysU/1djCMU+8n9DMc+jbIFNUiDambxv8Po64dYH6vN8oq7e+fjt/UcxAeuLje
	cjA2FFzgYEsA/DoUYISTtOgz9jtybawo/OI5b01Sa84kkysjIgtt4FZHoUDDbOa1
	ogw+inb+7c56Uc5FiYTtJnVyDYDBNWTNuiwdBnLHZFQQi7Rp5P2N+Te5XYai41TL
	rRxDlEFf33GdxN7YPGtpVSkI8Dl09nOePP4h1znU9f0zKWmiUxcLeUyuOcQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2ywjm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:01:01 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-892458cb161so394121241.3
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:01:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756821660; x=1757426460;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X4nCKgYxQJjfMP/VUT4XYH1vbsoebu/W1HveCS5YCMM=;
        b=HEuKGOD5pkrw2CwaBkQt5RGd7xHn01okxJyPojQIfZ1ijEvfid9UFf2R9eJ0f5RzfP
         Cz+yMoGLfr6yhvlBVrMHmJOAsLcek0GCt2V1qOJhXicOaBHJl+pMy0VDDgxYvuNRhwFu
         VqFh3hAiBmrZVMS/1JRrjz5O+LxvJ8UImYYIic0omgZmK7qbUXFF5Ai/YchP/IbWyWZ8
         o7P+sXsC2pLG+EIMB4BTVA7vjv36Y+Oy85uVOQUmeFHLwuhLWPtOUVxByiSOZXALYtFc
         Y0CvHfgJuOmi1AW3A3EmRcoGsco+0yNTL5Pz8xk3TNb8ZlE5wLg7R2tGMpKfsN1wPRpl
         couQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKtZFliqGGSP+QbfvIVYld+TplLRVXjl7wQwvY7g3ZxYIr1/pF4sMAZGZAYuoiZvXGSuX5jSA7Pyan@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/1LeBOHTCKVntKP4oSTvQoD/WbBp7hVnYxRrwHOZ5O3NBDHho
	utAemVHWvSNbScp3C3jqfRYOE+drrM7FDvk5ICaoy+g1gD766rKKP8elB++SMdoTncixV242giT
	tpCijB7qec/0wxwR4JFZcZLNeDy1Ywf9jbgjryFNZkJIZ5z09CR/ARg9h+lAagOlY
X-Gm-Gg: ASbGnctwA1zbpyy14g6fK8yiGtYmtM1pd6G/KYKaOQi0hrVWGsQStQUgRSyURn5YHX5
	Z/WWwJ5l4wt7TbJ1pZbdMBbKc0079aQt+dpepaN/3TTSQro9gl0OgB7peBSoEz0HDt5Owx7/wMR
	v7BKHj2IZ8sdO9yFBLRWT6H+aAJjrl5zbfz6vrkPQAHXe+kNf86v4ecPFHTc7pnWvqnK4UFSRFZ
	vtek7SDManCPIqIjsesWkkTszfcLCWsRU5dUNgXGgmZdTLP6yUjHOfgKXD7FelgzW+IAXuQGQX/
	1zt86OWWWfZSlCkO+tVqBQn97+23mI9KkW6ZRmBC0pkSdYmC7DPKKg==
X-Received: by 2002:a05:6102:c07:b0:528:95cd:bdb1 with SMTP id ada2fe7eead31-52b1bd1d838mr3723217137.25.1756821658195;
        Tue, 02 Sep 2025 07:00:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH4njbxVQBDhMgFP+R+/C1mkzBd4r1t0DyPORMMUl9tndSyU436LA4uBfQwkstR2HtckVPx8Q==
X-Received: by 2002:a05:6102:c07:b0:528:95cd:bdb1 with SMTP id ada2fe7eead31-52b1bd1d838mr3723115137.25.1756821657123;
        Tue, 02 Sep 2025 07:00:57 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d2250115fdsm14381196f8f.40.2025.09.02.07.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:00:56 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: srini@kernel.org, broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org
Cc: conor+dt@kernel.org, perex@perex.cz, tiwai@suse.com,
        linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 2/6] ASoC: dt-bindings: qcom,sm8250: Add glymur sound card
Date: Tue,  2 Sep 2025 15:00:40 +0100
Message-ID: <20250902140044.54508-3-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250902140044.54508-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfXz5kyc+gSCVXJ
 tiKAtbalbkSTAESiZu2hj0e1nxnQhV0bhCeP2PjQ9Qty65yXAyQcXOx7lm4zKLUaiRHxfTNfQeX
 GPFDmQsUSwh4oVD7qC5dwuYlDLSu+40DI0saFNeGBjBYzgz+JPsrJMrmufQAJ6/ZRXUgrMvWNLR
 MCjj6SxVBBA+xT3XByqPzmKdEnBjuzn6O/v0xfGuAEksVJPg4pRL/HEuUA+BCnUWOjHtfRK1mEu
 BXcu8AEfuGL0R5R8yk6VpoeS0DD2MqOctn+hVUAZn7qdsNHLTZaZLxSrg0WOapIq7LVmoX+gosO
 L2wehmzfP+MkMSrug8LetztaAE5EVrpFZ+/CL2ZKwdxCl5KXe780+fmJeABncycnHHHkYwhIT4V
 Mz3Q+RxM
X-Proofpoint-ORIG-GUID: r9Bc350XSwhjUcV1OI1vKvfGrRGxYLBb
X-Proofpoint-GUID: r9Bc350XSwhjUcV1OI1vKvfGrRGxYLBb
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b6f89e cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MxEaA3INf6t8ycFtHZsA:9 a=zgiPjhLxNE0A:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

Document the bindings for the glymur sound card which is
audioreach based architecture.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 5d3dbb6cb1ae..8ac91625dce5 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -31,6 +31,7 @@ properties:
           - fairphone,fp4-sndcard
           - fairphone,fp5-sndcard
           - qcom,apq8096-sndcard
+          - qcom,glymur-sndcard
           - qcom,qcm6490-idp-sndcard
           - qcom,qcs6490-rb3gen2-sndcard
           - qcom,qcs8275-sndcard
-- 
2.50.0


