Return-Path: <devicetree+bounces-252238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67937CFC9D4
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DC04303A0A1
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BAFA28E579;
	Wed,  7 Jan 2026 08:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IjIzlr1R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hqdFp7ny"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CA927877F
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767774487; cv=none; b=qsZWjWXAcd7McTb36QyVd8ad/PSOPwOJKSTk/rbl4RGwZtYxtJFVQ2gn/QpLfqv33JEeDgIM9juc1bATDRKE/QAMZnvAWCw+jrwct6Q6cb4bBryduGb2ovJEQESgXhO/aScTpQwT/JTeiMECwyuNWOOZNJwz9MXWixH30H76YK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767774487; c=relaxed/simple;
	bh=YuO01J5cCWly3QRXJK2VwnsCcUL+EAOlhGOT+tPLkLM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aNkp+0aCZrWxMloyyDSt1Ph6Ku5Tpy3Uxa7FptUOGZ4wkBV5ToLAZEPqHiKqBHxVObq/ReFYXWVgqWd/hckXTEGdz59P6wjcqNatVai5yszepgWNVzq1UVu8mOwBtpd9OmPdRwvWUc1gZbEdMScHIO1DKiT/fVh268WLJ1t20AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IjIzlr1R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hqdFp7ny; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6075Qk3I805175
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:28:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k43xa4VOrmCN2BiW8MUJUfR8Y0vRZWMZ5hz8NjvOgRc=; b=IjIzlr1R3KKnDL48
	B4snHTjz6SONqjd29mx4uQZ3AvJlUhmn02XRlKxkp+RwDNmsJVBv9/es/IYnZcl0
	B94OoR6+JlMDnB3ABDSZCR4N4Sah3Eb0y5lyz0D04hjVx6VmV/XEubFket4cuE17
	CY46JeOZ1m5HwWTsCfA8dirRd5Xxf7Gq/kNq1YJU+8fVNDW+B4+K4iY/QryDH6/P
	edEe7CYGA4XR0peZ2whHfhBmUklhHzZK21BqVg4DccdxFDHnuMtjTwSbi1Fx2pnw
	hsUUL06lkeVTpphXAMXEio6Mhc54SPQhWZYGUGA17WP+P3TY/lSYNDCgRWQM40Gy
	VNqjKQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh7t9j541-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:28:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1d26abbd8so58252431cf.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:28:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767774484; x=1768379284; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k43xa4VOrmCN2BiW8MUJUfR8Y0vRZWMZ5hz8NjvOgRc=;
        b=hqdFp7nyW05SypdofsnhU2PsD7DYelj7kJ96jlfB/Cw8GxNgRi0qtaky+Gfq8/8H6g
         Wk3dp+QuOU3qwbY4WDn8IzAIkUL7ex+vBNd+8dBcUS04hJYH1DaoY2nqx3wIb/XtF4oG
         sns64KwVwwqdlKNOBuP1BNGrKlzvM+cWIwJVabExT4QlpttjXDGcq2EtKRe39iM66awy
         VbCPrdgwuT+2qXulzXRsIJ8hukXnMb3iWEfr3V9q9Kj7gRnDoIStuUT7nOsB9KM9tYOB
         iF9IkmGySxdMeGIhFwA3yK5V4yqNINTP/xyz8O5V+KXydOd7WIdTX50bUXFVlsR3Dacb
         Mrsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767774485; x=1768379285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k43xa4VOrmCN2BiW8MUJUfR8Y0vRZWMZ5hz8NjvOgRc=;
        b=v+qgb2jIdW1E/lHagjbEgJWMMVzMgz65RUYQKeshmUxaf0tm+xTK5t/QZqpDrTpUbn
         tEvc983erNVbw1ui+nQuMozf1rHtta7WKKL+iJSmQrEp86NFtfj+R+4NacBdnTePzUHE
         f50sgiw8rYlGsajxU54OwUU+ow1TaiDLrBCtGfJVLNDjBl8qyg3Uz7aDn2MSNUsP2eUM
         rgKcCZ5YK/eJADQZklvOYwUywRYcTiGHmMIRGJ/2g5EGBrjm/sEav1SQ6cIpmuXL9/pS
         Z/xIsLuthyVIdG2iTLa8PjpZ5xhgmZC+tbKeke1yNkCF553lXuO6jXTDtv8OW3p/wg0g
         0d0g==
X-Forwarded-Encrypted: i=1; AJvYcCVycTtukkHdmAYzgwVY4RrUjyrwJl9Am8elRL80wlJqjjuKn6D11NJRli87s3XwTiGg1a4jj+eW+ewU@vger.kernel.org
X-Gm-Message-State: AOJu0YwXbrtI/D74HPT4bDCOsvFG8ASfC5Ooqe9jSl1z398ZTIPumU2w
	s6fSSNw0G5FGGUxfZv83ipa9TVFuEtxWh9WzRlbFPN9arSsv8W4TwS5I04hKtThH88nWYL7tudW
	evN2Jb+g+5lMsResRhBEK6cr6Vjw8OCn+EKBluTCmJIydkzsfTUZ8D15393DO92Ib
X-Gm-Gg: AY/fxX4q/H8xVAmYK0ghH7otjPjeW9MeCsuApBGPBjyAaIj1wbV2HIEMPRB3vjthuli
	alDaVmEElBlRbMUPqQh27PXkxQkbty8RcGSqfYSXnelwY4g2EO00G9O374NkoA/iRY9FRblIRlo
	sv1M2kUBiatUt4+suut2gbLNa8J8fkOcDtHQ22v328EmzBVA2V6gt3y5XvWraRt2bkYkXWsPQ3V
	Q1MdutOOeri9hQ893SLYDt2sZ8LP9RWmXc7R0iwyRfAZrGsMHFlMdf84MVBKtZTqVKq4BOc4HUx
	YjHE6PersmMd4PRbs8dnatNtzAvAnl4jPWbUeLWLIcheM4Ti6LguUhI36pyixgURoCFHeF9k1gm
	EoDgtOgHEWtMd0WwCfP7SiV/1wSVn7sSnCZ1O
X-Received: by 2002:a05:622a:1b9f:b0:4ff:a40d:d2b2 with SMTP id d75a77b69052e-4ffb48636f5mr24099351cf.16.1767774484651;
        Wed, 07 Jan 2026 00:28:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH1MiIvYcTnGKSlwitEUnDPbVgoa6OjhOX+6gyCQTwvT+xhiYWDPGcJ1+Nnrt4tdoBe4eljtA==
X-Received: by 2002:a05:622a:1b9f:b0:4ff:a40d:d2b2 with SMTP id d75a77b69052e-4ffb48636f5mr24099151cf.16.1767774484256;
        Wed, 07 Jan 2026 00:28:04 -0800 (PST)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:b90b:ec1:e402:4249])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d865f84besm8276575e9.1.2026.01.07.00.28.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:28:03 -0800 (PST)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 00/14] power: sequencing: extend WCN driver to support WCN399x device
Date: Wed,  7 Jan 2026 09:28:00 +0100
Message-ID: <176777447710.14370.7888531422852179019.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hJrOa9RyvmxzsXbvdtkp0FlFS5aQSr8D
X-Authority-Analysis: v=2.4 cv=QfRrf8bv c=1 sm=1 tr=0 ts=695e1915 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=f4exIScRoNMJIANslhQA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NyBTYWx0ZWRfX91VlM+gFryUd
 vFQ+up4tDVnISaCe9yge46gr9pM4mVKtsgwLsZV+eRbpGd4r2JkSLcn3g3esj7k293QPJ1qcH9J
 hsN7SNVNEXr+VvX1Dkz8z2MRk3V04js7vWCJuMl8v5eTcixevnn5Zm6cqSXxAWgBSBiE8G1DmBe
 UshcinPTkW2yAhgxAfh65RccRWmYLvKFJ5UOpjsuGarcSZbvSJsATsD1a+qZk8ZBbE5ETjvIay/
 XI+t9M8WDBPejMtRbeaW4R9zjOBh6ynMqG9rLa4GPKTNcZ2jf44ovAafmx2ixu1f58tbfkZmRsC
 l6svJtBADYkIfjQPfXpa2T5VD1Cqej4x4G0+VJ1YUWJ7Gxgq/X2iFyCQbjWyog5i/KPoBuYdV5N
 F4i3bOAF7wryNnsmAoI8DZLlT3UO1+idaiJ00v9Lv1o+qLu/G/LBOLUmbge7JCJELr5VnGr8WKS
 3lNyraqgOJUfzbnB5qQ==
X-Proofpoint-ORIG-GUID: hJrOa9RyvmxzsXbvdtkp0FlFS5aQSr8D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 impostorscore=0 suspectscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070067


On Tue, 06 Jan 2026 03:01:10 +0200, Dmitry Baryshkov wrote:
> Qualcomm WCN3950, WCN3988 and WCN399x families of WiFi/BT chips preceed
> the later WCN / QCA devices, but they still incorporate a very simple
> PMU on die. It controls internal on-chip power networks, but, most
> importantly, it also requires a certain start-up procedure (first bring
> up VDD_IO, then bring up other voltages). In order to further unify code
> supporting different families of QCA / WCN chips and in order to
> maintain the required power up sequence, properly represent these chips
> in DTs and modify drivers to use power sequencing for these chips.
> 
> [...]

Applied, thanks!

[01/14] regulator: dt-bindings: qcom,wcn3990-pmu: describe PMUs on WCN39xx
        commit: a5fae429ec2ac72372bc874a0334a7fb9eadee83
[05/14] power: sequencing: qcom-wcn: add support for WCN39xx
        commit: 0eb85f468ef515fbd2538375ef3884f6dd376382

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

