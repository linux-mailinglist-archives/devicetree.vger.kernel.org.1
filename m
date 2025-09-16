Return-Path: <devicetree+bounces-217770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C08BCB592FE
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:10:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31DD41BC15E7
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DE172F7AD3;
	Tue, 16 Sep 2025 10:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ClHK62Cv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0049238140
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758017428; cv=none; b=KzoVgMK3YldM1NxFhSoyqATsEAA07VmsLmTYrshtc6i0XPRAFlz8jbMfS9n3LvE5/xGGCPJNNEdpO2IfDPE/nsCAaqqHsHn8u12Wjag5J6EDTWgK4QK/kXOa/xqRD0O4mopnFw6XHif+pQJj+JTaHYHC7woE085htboR/SJhVyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758017428; c=relaxed/simple;
	bh=XbVFcqCWViC3Ty/3Z0wTLN06tYYojOW9npjz34zaKWE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fhFg8d7kMUxfpQk7tecsN4RosucBsCX/6gm7g7QlEQOQE/DD4hyjgMNDhaptkKb0FnNZcoXO2F8HbpNnCeuVFebjB8AVd/mx7b11sbv4IUP78HPHIBivysg2JCaTZCtc3ylLgFiacmwsoJN2XRZ7YyL84rNV+5PSP2664Ika1Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ClHK62Cv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA0sfw020559
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wKZA8BPl5AnCLEV2joJ24RdF
	tVw9jv4aVixR67Q19MY=; b=ClHK62CvK3ZDTQyUBb8sTAip0ggbSrF2CZpplJ5x
	kO5ini0JvfXSEuOy/Lpkb+DFOFY8lTxJaIGNYgOa7plJ3Xabo/CJ6WGBFN4D2DQn
	RkYRVLah6rRN+eEVLwJsRZY6rNYvjfClgFgKNMXrlAQCdr8ECZd3z6uFXgxfHCiM
	mq03sRBzh2eBtKC6clanyxDxRY85HYJCXhJAyV2wgrrgkunjnFz0wX58aR1Phngy
	9x5aD0uyOCb2jV7GwMq9IiTDcL13t+Mw0o/SwEACbgVeuihHe4q7CXUkZCOMMqca
	udi0dvciKfes0syQg6dB6iKhND0LNku6ga7hvCS3RbhN3Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496h1skymm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:10:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7829c46b2e4so45123266d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:10:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758017425; x=1758622225;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKZA8BPl5AnCLEV2joJ24RdFtVw9jv4aVixR67Q19MY=;
        b=VpUAwvEDdqO0tKtbmjKzU+IgcTuW9PqOFRQ5oWTdtu4JrOx3eljftL6I2fI6cePDUX
         srI5a0Vma0YBkhz8Gl8vsO9HsRUA/FGK/UnOh66x4ejFaJaUf/QwT3ndx8ApBUeV9nki
         wN6HUc5tG2jVYOs2c5ieNmWeJKPpyiaU4KylJMdfmzk/zm2U5FJHrxxsHARxaKnaqffo
         iweiibqkQN15Ilk+lxKe6u/CU7g2ai8Pyv+rWClgovJCCI0qiKHqznSVw2SWsiHE/T7G
         9mHZW4B/lWyol5FzVokhCbQa5iatoN1wSf0cdSt1wvjf5rEeMz80KV0FYKgAqOztBTJc
         EsNg==
X-Forwarded-Encrypted: i=1; AJvYcCVWEdCvPQBCEGqjyD43AMluYog5q8F30ytRia9j0fAoPHuaqxvoCxuQ4vyOel+Sis+rFR8DQtkgu6pU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyef/4JnXUCI9OfKwdWx+8oB9hULam/Fe7HC9dLpuLvozbgePap
	blSIh4XGHUXGta8NZvjXnHJ1tq9M33kY9K/TNseh1O5F/bgjQwtUiPQi3kGOSrdnK4+yhxcq08B
	lNh0pSm6UQWFV4WQ5ByNGcoxDJkhGRH4z2D/hqDQUNlE7WamDCAt1BCDTFi689D2w
X-Gm-Gg: ASbGnctp+9j1lxNL+c1Fs60v9FKz+yOFIQdnO8V+jV7+zcrjbxaFEE7tR03T2mju47j
	39pqpRBHk09yARngNUTDDqp9LNGo/SJ6jkUNGM6Shr9FEQoJD63uJAKckGZOHHeThUsNd3HObNK
	EKnSgA3r0ZRaC+urP+hLnNTMp1KoAJrN3wYxjOyrRNTyKdIosSs9Adq4SkAOMTTOycAkOvVWkoa
	vh+dYjZk6QpsnDSINU61ERE2FtFPsVuAMw2Tt3NBNbxVr/0dzf4iQ6wsUSQhrG8FL2JaO0Ew0oW
	W3T/Q0MmA6EpiLWeKntKGSD4TotJU+L9iCcfx26x54Ul/l8y40zEGSUUqt9M4Wbnq/dxUmhFTRX
	yH8bXP1EZ3qZPmQVVgyz6U/7RI6GcL0arjK2VGwWd6z4xPGbj6M7L
X-Received: by 2002:a05:6214:dae:b0:78d:4b58:2eca with SMTP id 6a1803df08f44-78d4b582f82mr20475126d6.26.1758017424833;
        Tue, 16 Sep 2025 03:10:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1ZEAVjtbKX71iAiDJ19Ofyo+pVaF7VLXJpCCJ2aZl++ji5oAc1d4XKZOcSuQMCS9y6Mh/8Q==
X-Received: by 2002:a05:6214:dae:b0:78d:4b58:2eca with SMTP id 6a1803df08f44-78d4b582f82mr20474886d6.26.1758017424433;
        Tue, 16 Sep 2025 03:10:24 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e651919d1sm4386662e87.126.2025.09.16.03.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:10:23 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:10:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: sm6350: Fix wrong order of
 freq-table-hz for UFS
Message-ID: <pjalx3o2lfh3g6fxsaw3beir7ufpls4j5y3f7zdsgopvpr4vuc@5vldxr6lvojs>
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-1-3600362cc52c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250314-sm6350-ufs-things-v1-1-3600362cc52c@fairphone.com>
X-Proofpoint-ORIG-GUID: iUG8Vn1jHUmjMdgsx6HF--Hnhs4UPgQN
X-Authority-Analysis: v=2.4 cv=A/1sP7WG c=1 sm=1 tr=0 ts=68c93791 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8
 a=08tnehPgh3LRQT3fcTIA:9 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: iUG8Vn1jHUmjMdgsx6HF--Hnhs4UPgQN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA5OCBTYWx0ZWRfX4tXK4ygo6dJi
 +yxJ738xBwxaoCEb1Xo1LjZpP9spqHuhURihI175O96ekLb8imFqtl1tWlbJJYxjaOfpnNIZZCG
 KP9oqZSMr9ZFsh0G/4b698tFpog3AcGRBU1z3Xa/RLZvqQc7E4hM6DHxZJBjsVbwSgWHSnYYA5L
 0q4KIBfnIliAZyeATnzHvYF0JffcIIyHUBODFuxy/2mL4a6l6LbGET6efcKGgD04p8Ksfqh8rov
 7rk9ggwHdB+5CgsrVbsy6Jqbj5gV2otbJa7we5d9GNfCLEmDDq92tFgqxCNyNKUejVQECQ2Gs/p
 fsmtgJ/F5VIv7HCeficlYxV5OZ6Zxoo0FkRrp/fd9MCdCvdfrmH0zbOfRZWQPgOT+NTSQ6dFdNv
 k82UrcCP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150098

On Fri, Mar 14, 2025 at 10:17:02AM +0100, Luca Weiss wrote:
> During upstreaming the order of clocks was adjusted to match the
> upstream sort order, but mistakently freq-table-hz wasn't re-ordered
> with the new order.
> 
> Fix that by moving the entry for the ICE clk to the last place.
> 
> Fixes: 5a814af5fc22 ("arm64: dts: qcom: sm6350: Add UFS nodes")
> Cc: <stable@vger.kernel.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 

-- 
With best wishes
Dmitry

