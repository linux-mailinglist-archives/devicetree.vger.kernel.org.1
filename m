Return-Path: <devicetree+bounces-218416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D1E6B7FA96
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 16:01:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEE35B61C90
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773F43195EE;
	Wed, 17 Sep 2025 13:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qu1omjiP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60C8316187
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758117511; cv=none; b=Hkfz9Xc9QzUzfRkGFMvx1Qz0z4N7Fv/VveNj8KNNtSE0CzayMLaYpJ0fz8i2+WaRvzYNlmfg0hZblEkhC/eUC+7yIyL+/CL0sLzkFxg61ORYYusIjMA15kkIDFDu36aE0nveTLnNc8paR79WazF38gi6Sol6i5qZO0/Q/cURHpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758117511; c=relaxed/simple;
	bh=Bap29ptjcsZrGpm6RgpSfT7sjPHuC/ajbiIsZlpP9qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cKfcSiuqSl5gJKIua7lB5fFEg7GOoZWS5sbwW9gh69tzlFhsgRzgee5PC1bSwCjnGw9bvc2yO3f2xxzuB75xeOHa540ArTiIPzVn7mZ0F6MzPHo0V7uKNbK/wF5UgaCoGkCcU2zKhV5l4qa/3IKaYfqcjg1qMCHQh2tNjkL/zFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qu1omjiP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58HDG3YP003351
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:58:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Bap29ptjcsZrGpm6RgpSfT7sjPHuC/ajbiIsZlpP9qA=; b=Qu1omjiPBZMPK5BM
	2mIaADHfORtt8Ze1D5YDpMg1rFc1sxF2l7DUQQKzXNtyNtH6MokS9k7Xw9nrjIqt
	tWQ1sDJF/pX3kPA+DyqmS4yzz5PGKhoZqW5blyvHTJRrZQWqio+YoaKaj/vX2LOl
	ZvG8HpBF4aGVOd1z8LQlHkfnvGFmVkQ5EeblCw9i+EV9MQA2sNSU1fWJUqhM1K+z
	YQCk706dKfrI1lunxDa9YmV1AXIMKT7+tlhmbO4H+NkZKy1hxzwIR9kaAQ6loEiY
	CqAnbJsyQ4l6RhTVTppRwNI/X9UvppfqG75yiDG2APjg3AcB88suAMes3p7ZUufI
	MzBt7Q==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqgr3m0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:58:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b600d0a59bso25111081cf.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758117508; x=1758722308;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Bap29ptjcsZrGpm6RgpSfT7sjPHuC/ajbiIsZlpP9qA=;
        b=AbAkdGfu5fZOnVY2w1YTrxJ2NeumNdtmesv9df27QsNuXEmfzEeY21JvxT0J8G5lS3
         ZOPUG0/tNELSaFYe5k1xsOUtjalv5+fa3R4d3AhN/3SAJ9ttoaIpvJBKW5CBqTD5D833
         ubfW5MWnqgTeM5bzV9f9kc0gNxy/EubShtqo620Cq4Jy66l3NHzLN39dqHmrYfH1SQ7O
         IWMHM5VSr202PwWuxkpkmhdEwZ+4JWhfixYgl0zwJ8SLdA462pXx51y70PaREWyHWTCp
         wh3tbTtooknnjt7UNDMV3Y4UbjPewKnbgoMfRdKu44ChtNCL288YhyXFTQXpNKXkLvr3
         kdZA==
X-Forwarded-Encrypted: i=1; AJvYcCWU2gRN0VO1TMUxvGPPElAm4ce/HBVHEWK0xR2dgmS5IzQjnw6MwxRhvD6rzlYVasEjNxvrEr9rlRi8@vger.kernel.org
X-Gm-Message-State: AOJu0YxHCvSfYTB3Zxog+HVR96e3H6oZ/pkBAFRadhWyYpnRSq4eK1Ey
	udPGJSQSJGzVpc5Q1Q5XguBHD4DpEwbPZ6b67WTFEktZoHWveWNRumg4K11IMhOw7jepOOrEra6
	dAtfOVxQRPVbLLWer5hw/mUtduViViK+Ya+IX3EgEDWFMDkvk+sbSVDka+i2mM25s
X-Gm-Gg: ASbGncuF+hnljRjAlUZTse3G9GB7s70xjDM2WO2lw8O6euH1DHe7TJtvSQxzFUYGQNA
	vHTGnIZvmq29itaJDjxJU3PwdJx6hLuNTPY+fTuPJuROokyW1EASX37TLgcCw3IIv8dVPfpdNXB
	3DhKihiuAqkOrOn+IoGoOdCYUNh7o/7eRUTL1/MlzShJOqGAB5X2i+xIaCWuFGdyYxQMq5THsnd
	3yvu73cyPiGuVvnpk64mHc1SfvvR6QdYoumAhpEDjHRzqmiyCjocMmQJTCQdeAlr3PXhW6R/BCI
	QOZ5Nelu3R9MYvhd89UKuNE2I883xGpvH5jVtfWFBEnDehOwZfRBgCKC8FwtZPcwf4Uuzy3QqIC
	QJET7lMjHeyfshAn/Q6J32A==
X-Received: by 2002:ac8:57d2:0:b0:4b4:9d38:b93e with SMTP id d75a77b69052e-4ba67f63fcbmr15850431cf.4.1758117507682;
        Wed, 17 Sep 2025 06:58:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzl8qZRgKO760HE5SG604Jpiu8qKnn+9Xk5rimSB3ai8LQP+dMPXzzzD0y5Mr3IYRJFxpE3g==
X-Received: by 2002:ac8:57d2:0:b0:4b4:9d38:b93e with SMTP id d75a77b69052e-4ba67f63fcbmr15850081cf.4.1758117506982;
        Wed, 17 Sep 2025 06:58:26 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-62f9a7d8793sm308788a12.38.2025.09.17.06.58.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 06:58:26 -0700 (PDT)
Message-ID: <56d34704-aed2-4c61-b5ba-3cf3c91b2806@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 15:58:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 12/13] arm64: dts: qcom: sdm845-judyln-common: Remove
 framebuffer reserved-mem
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-12-5e16e60263af@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-judyln-dts-v2-12-5e16e60263af@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: b9oG3RTDO8_1mfhaJTKvNNEwhxFhfOpD
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cabe84 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=lLqmTuED0iPNNbIZDJgA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: b9oG3RTDO8_1mfhaJTKvNNEwhxFhfOpD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfX0+/iKsjuIr5S
 KFx1kQJV0PUf6NAOhwrJaUXWTHso+/pCfZDlOOw4ktwxRMO0D95ktrNYl5yM5MqJll3sEUkPFnq
 2nKKNFRycg+u88YFAIPb4+pUjEpKBLi3foKksvQfMmuE0bPkdy6/F9Q9ML7LBwfLPyRMx25wPWM
 EPXPLj17jXMS+kAS1d6RUqnKsXylknhBSFCUQFBOYPd11JcoDDe2+DL5LF/YCAfyGCkFizuzDXV
 fyuaNYZXd97sA2pHjV9dJmDRAQeDUzO9DShUQOvIkFV1VrxswacRnU16cPT2f5Ne7/+d1OWAkmB
 VH3hIkm0dAMushGuc2Blufop3yhzFjgrjujVKvdpflr0NyTA5NHavE0PWKM4Brl5gwidCW059tP
 dzt6IkBm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On 9/17/25 3:09 AM, Paul Sajna wrote:
> It causes a conflict with simple-framebuffer

Huh?

simple-framebuffer even takes a memory-region reference nowadays

Konrad

