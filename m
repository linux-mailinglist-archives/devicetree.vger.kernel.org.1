Return-Path: <devicetree+bounces-152814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6D8A4A33D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 20:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DB183189D681
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 19:58:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1D326F444;
	Fri, 28 Feb 2025 19:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FvRbA7w7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8012E26FDB4
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 19:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740772611; cv=none; b=Zuk1/LFTDEnsjM0EbitYh5NIcvMeoUDVxrjLLQU/bTU1teb7DaXWDUGafCWKNY/6J+665XIpCPRMoPNiUFWYtW+C8h5dW+qTg0Ksp7c8EAixTVSRlhkRh1F9G9dCVLn4SCeu91ks+BqKHZTiD6amQOvZp7gPHI0B3s9o5SUtoSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740772611; c=relaxed/simple;
	bh=bN/2o02x0EaCME+Uhmko1p/92OGOtG/jaYCv6x0kZI0=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hqY0qNcGDMHgkzuhLzqPIEfp9mfY+oFKElNRaIAv3PDdKNBIfd2OqJI7ux5MDVhvDETj6asO9CxhS/ypqpL/MbQ11mbGBON4gnSsMmEuxKKXFEyb7I4HhInJr4mhLxhFYK/ftS/YGtbdazgstw7mc0Qpt6CxCP0i1/WI2vKbO3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FvRbA7w7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51SJVWER019922
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 19:56:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FLhrDFLiXAfPmYZ+M1E3Tzf5C/xkASQqa32SzWbQuvk=; b=FvRbA7w7sNyDRhO0
	7mUYDTikpS+u+SGRNckdjLEmPGLTxCtQzAlViVCUMrSpU/VgFXyrvD/X29kL4u0I
	RjdXP9cSYsEzyazamLqG9IXfE7oRHn3L9Ejv5HhAE87lEivc5c1I+hRIYrlAxW9J
	Iubu6aEqu1LX7nSecbh/ESzV13lTfjebZEt+W0oF1TRFLGEDf2gTvXqGqVB2rjAc
	/cVIcXnZUU5dPXpkeIOuBr7pxy+VvkfMQtU4wt+P0J3GCvkJ/CbwkYnLdmflQ+Fo
	PXlo87oJ3XMSuz5iUVgMaH/dlnvZ4Zj36XQg4ZnjJqeb2NGXfmokIdXn//x+tQrv
	s/3w4w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453kchg1um-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 19:56:48 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22380b74cfcso3247425ad.2
        for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 11:56:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740772608; x=1741377408;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FLhrDFLiXAfPmYZ+M1E3Tzf5C/xkASQqa32SzWbQuvk=;
        b=uDGChlHwQ/ho42TCgl8AKFuQW/P3L8aTpHvRc2brxuYY/b1WoTy9tWWr3HY2Avr5g8
         Owm2SJVN1TC5NMtlwoS6mNbrTfYJK08yJTHmk5sxjZCsqZROM9CeOUJ1pY++ZKz82+pL
         C6i+8oYBRZF6A46Y3MJ4YkAotsgazTS5JdqB1ECXhaeJy1tnkWTtQBZvOpS1kEwVHE1K
         uWcqLBitZKUFQ5t1+leY4BHPfQhLQXbT4qsCESlAjy85Mp53Bt01QOhnSpM/nNrjOLL8
         MyCj6d03p/HUaHkFEC+CecBqWljJ3HqzmWtu8HGbnFk9dA3hufoBOPuQiwZotxZJo6mE
         Q38w==
X-Forwarded-Encrypted: i=1; AJvYcCXCnk7Utoaw8OWErcyvcZSPI0DujOyCU0wp5lEiRzuJh1FlBNkeFFP83hpDLLTwUCY/JdtQ5so13Yfu@vger.kernel.org
X-Gm-Message-State: AOJu0YwKm0BPlN96kXbIymEUh3+puFB5bgUcTtuIT/fOWjR/H15JGywh
	Lz+cnpX1oQ/HfZXa5ParSYipD7SSO/95t6PRqHkuxo32hPGSlTpELm4FmWI+Cy/K5rYAALarHwo
	MVn5QjVGzS231DPtWGk/Cu602rDAWrMB2JBCX/ELBYMrN0DvHW5mWH2W6ltkB
X-Gm-Gg: ASbGncsdiomdQE2YBSi2Jgc7OrMURRIZChtoSs/a47Pc0bSPuLn3RY+uNHWSezHM1Nb
	gIekuaow29JZPfNx/E6QvEZOfZBQjncp10EqaCdM9j+60C9V24iK7frR3+JgcptPJSCRZ6Zku/i
	Zl85LzqXJfggWXV1YP2CeB1iPCsIJfnJMNvqObMnbFP011aEMKolnrJCmmDQ3JDbkiPo5DrHnkX
	T6q9/CA9oaR8bqe5sfWjTAEvvbp18n03oNR60tFwGvIVnWnBNaWT6bk9zaG101tbAqx8n1bMEvc
	/+uRwBHgB+LIWgeRwNgAMp7Ba5rZU0uf4sZELD/cRXBb8W1sxagZ
X-Received: by 2002:a17:902:ea06:b0:21a:8300:b9d5 with SMTP id d9443c01a7336-223690e1355mr73911185ad.23.1740772607652;
        Fri, 28 Feb 2025 11:56:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH7N0OvSFFa3UWHRhgJnMWCvMyrdXk76Vy99PtpyeYMuduZgzrvVi7czXX9W/MtAa4KhsBhtg==
X-Received: by 2002:a17:902:ea06:b0:21a:8300:b9d5 with SMTP id d9443c01a7336-223690e1355mr73910685ad.23.1740772607194;
        Fri, 28 Feb 2025 11:56:47 -0800 (PST)
Received: from [169.254.0.1] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223505336ecsm37140165ad.244.2025.02.28.11.56.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Feb 2025 11:56:46 -0800 (PST)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        ath10k@lists.infradead.org, linux-kernel@vger.kernel.org,
        ath11k@lists.infradead.org, ath12k@lists.infradead.org
In-Reply-To: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
References: <20250225-b-wifi-qcom-calibration-variant-v1-0-3b2aa3f89c53@linaro.org>
Subject: Re: [PATCH 0/5] wifi: ath10k/ath11k/ath12k: Strip device prefix
 from calibration properties
Message-Id: <174077260613.4132177.11023317176929798759.b4-ty@oss.qualcomm.com>
Date: Fri, 28 Feb 2025 11:56:46 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0
X-Proofpoint-GUID: tvMZ3JE9Bj-GYcW546Y0qI6HDdS3jZjD
X-Proofpoint-ORIG-GUID: tvMZ3JE9Bj-GYcW546Y0qI6HDdS3jZjD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-28_06,2025-02-28_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 phishscore=0 mlxlogscore=738 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502280144


On Tue, 25 Feb 2025 10:05:31 +0100, Krzysztof Kozlowski wrote:
> Devicetree properties describing exactly the same thing should be
> reusable between device bindings.  All Qualcomm Atheros WiFi chips needs
> certain calibration data, so properties should not be prefixed with
> device family (ath10k).
> 
> Deprecate qcom,ath10k-calibration-variant and alike, so we gradually
> switch to a common property.  This will also allow moving these
> properties to common schema, if desired.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: wireless: ath10k: Strip ath10k prefix from calibration properties
      commit: fcd37e2a33167cf6b507256365e45a43009d74eb
[2/5] dt-bindings: wireless: ath11k: Strip ath11k prefix from calibration property
      commit: 352e8c4379fa540747cbb6c94c4b149c7487feac
[3/5] dt-bindings: wireless: ath12k: Strip ath12k prefix from calibration property
      commit: 64e37c19383f840da534449b88d7adea4c69f52d
[4/5] wifi: ath10k: Deprecate qcom,ath10k-calibration-variant properties
      commit: a97ed4ecb797a69f52f66445ebca538c93462ba4
[5/5] wifi: ath11k: Deprecate qcom,ath11k-calibration-variant properties
      commit: 1bd9ffec4cdb9a1f09bbba16bba538f6c58a397b

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>


