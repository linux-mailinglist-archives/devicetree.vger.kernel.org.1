Return-Path: <devicetree+bounces-127557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 391769E5BB2
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 166781886677
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:42:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BE5224B1A;
	Thu,  5 Dec 2024 16:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KA9M18l2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A0022259E
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733416946; cv=none; b=KXKjkDELpPMDZy2/XrMCK2RqXPr75F9KhWU4JdByxEO5VmxQ0LJstupX6f/TDuf3xZ3bbgCmQkwfg+RBNEBqpsff6Se0W7YCmcAy6nhxSfm+6UQEoUGcsOwHHdrNyliSWYmwu+C1Lm05Y7xzUmkaDm+0YpPbrmrO9nk7c52g8Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733416946; c=relaxed/simple;
	bh=YoIne7vvuQzD/krGsNq203kmkbajQ888PwHlJ6Utetw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OQ5+o3MFI7jVNdTOwLY7jQVzkfFl79EuMYtd9T+GKrhkhuV8GzAGD2HWOJqJ1k++hkwGjY5vhPKZgd0GP3nDHRljbce9b3aEJJGqAp1k1DobiBlU30YVzdtr62OCxhTwKZDPfOakdSfqJBN59MwLTPGSen9qXcvEMW0YSTZkJZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KA9M18l2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5BqZLs030782
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:42:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	195rNMnFRFqaI+PV/NYZby6CtC//SxLeu1vnpcp/L1Y=; b=KA9M18l2X392TXKo
	KP/NHacav5XdCb0OeSbwbOpidYjhL5xIwd+DKVpgd17FoJC1D6GCWBo70Sh7Udqe
	fGq0X53A0dvG+VCjmSg0MIdPTwpWw4wV9EaNkS9BjDcrMGMsUQ6phSHom/gtoJJ8
	JRYN8j4IQh0zjP70RhnuyGND/y+W+0RuFXXu3XEQZAohjZ9HwbAJDM2bMtAjrjg7
	TnwJqQi5SRELrd9IOlKDwdeFRxuBioBEZjqIl1NmwvVefWykqWyaC3EhojloLQbz
	+qwK0kFPdvwmRmt3cVpai/V/OiW+mEMJ1z4qYn2/JzovCIWeB7rBfbB9+VI+u/Rg
	2tOj8Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43bbnmgsw2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:42:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4667cab5e1bso2816961cf.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:42:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733416943; x=1734021743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=195rNMnFRFqaI+PV/NYZby6CtC//SxLeu1vnpcp/L1Y=;
        b=n3u4nF65LPjBLc4jczzY7JC2l9o+GbmW9Gdsd449TeF7+O58RW9rBhJ1+kZ4M9k0zH
         n2LpXkZ7ZbWosSPtjUOIc0UcrFMKJ0O7l0ivZbK4/EYWGx5d4eu+ImGYijgZvFelh4uE
         /CunYQLgbq0sFAOYFSaku7BhFv7S0wm+s8PZ59efxabVkh+TylpboBCEGObQdvMnZkW2
         yG5/rlCSbu8yk8wjjQX2VW+kqJvdP95I2CjNy6hrPR6kj7+TqGebQ+UImKilH2QMEEyU
         5twGhg11VU2ri5yagdWUYw1/Yw6tTX5VA827DfxGq5VoRHvHJZ8ABU/AccsWxV817Um5
         Bz2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWNACrYNSjaLbt+qTk4o/OelRUe1X7vB04u/F2HAy5GPKBLk1IoorPcUThReKvb6NE7rIBmg+Hjx680@vger.kernel.org
X-Gm-Message-State: AOJu0Yx51VIwazsS6PB74MHmUBzGqf2L5f1UD3OW/v9oAVLPwwDk1Y7J
	cmsFfTpGdsw53DN33Wg8taPp+C78zCHI2uI7LeI3RJJeHvVFYOfMRW/enSLe/LbGWQ6yR8NEfEH
	iJFlJ0S/ZwXBCWXHMbBh6puBqhIaskFCU/IMzci4xaScUWCI0pOLEZuyCcglz
X-Gm-Gg: ASbGnctVBMsDFW9FrK2UUCIvk0SBJAlOapZxpbfqYF7dQf5CVSmw41q7Njv8zHdLqeb
	QuvubAMEz3J0NjKyAojPgYxwc2Sz8A4ZTr0Mm/xQ6ZuGyExNTT55083gcv142pCm4DYUnjyLVk4
	aBZIAGcKKuDhCp/+WQro/i8jteWHJpeM56sn/UEUN85e+wbOAn/qAOrsjbw6fe6LmKyRsL8377l
	BpaoQs/2gqXJUlcAcwfDOpg+Noy0D4LNry7VhL1f3fkPm9HLNZFQuAeg352eCeVmWNeEnHirSAQ
	xU5Z5fPKJUQSwo06Ba6Kh4lrxB5Yusg=
X-Received: by 2002:ac8:5d05:0:b0:464:9463:7475 with SMTP id d75a77b69052e-4670c0e87femr78657241cf.2.1733416943320;
        Thu, 05 Dec 2024 08:42:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHF6Wp3sPBMj5Y+ZW5+UIOvFWsYeIm7XMQDpvK+k/dFdEkf3tlHHHeo1Dqk42jNKdyMbri7qQ==
X-Received: by 2002:ac8:5d05:0:b0:464:9463:7475 with SMTP id d75a77b69052e-4670c0e87femr78657031cf.2.1733416943000;
        Thu, 05 Dec 2024 08:42:23 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62601f4adsm117466466b.128.2024.12.05.08.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:42:22 -0800 (PST)
Message-ID: <cd121bce-77e1-4139-9317-3a43c7e24ca3@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:42:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 08/14] arm64: dts: qcom: sdm845-starqltechn: add gpio
 keys
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241205-starqltechn_integration_upstream-v7-0-84f9a3547803@gmail.com>
 <20241205-starqltechn_integration_upstream-v7-8-84f9a3547803@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205-starqltechn_integration_upstream-v7-8-84f9a3547803@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NCmBncTG3a9q0CFupCeu5i111ue-0sHJ
X-Proofpoint-GUID: NCmBncTG3a9q0CFupCeu5i111ue-0sHJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=799 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 suspectscore=0 adultscore=0 clxscore=1015 phishscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050121

On 4.12.2024 10:34 PM, Dzmitry Sankouski wrote:
> Add support for phone buttons.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

