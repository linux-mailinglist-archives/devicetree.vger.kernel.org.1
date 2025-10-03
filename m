Return-Path: <devicetree+bounces-223585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1106BB8323
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 764B93C6C59
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7457A27CB02;
	Fri,  3 Oct 2025 21:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KFQqKnzp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAA2277C94
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759527078; cv=none; b=C9LAZHcgjBfBgO5rLu59o1fgfDkNJdoTUm6fo8k9F/UO3uDysnlF1JBPZ2qZE5UJOPJXoTauP77Ht1vcmzSRXE5Ku9vQ4TJz+QaNR7XICk93kIDC8pfWn1A+GpQU//fg64d6SjBtLI7z147MII5p4FS4REfZBmpEORpyo/C7oYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759527078; c=relaxed/simple;
	bh=SBy6k5wn7OOCnn1aCmALHU0oQquC4fvA6Tw45eKJThg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eP7XVejXqx7TdheipIXekSuntyyu33jylVRbU4hEfwXv5IBtN0EuC4RyotMdn8bVK491raBRhYg5XfzS9mcf3KTcjM+jazHA+Cwtwn4gWwmTXsEfXL0wOY5P6uDKhHGSH/grT8priGpznPhk4+3mJ6vUaHNHP3cQOCyQeNL0exA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KFQqKnzp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593BBVtE010597
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XlsGbOm2FDLEFD7aIg4S0aSC
	svAffT34aitDj5CRKdA=; b=KFQqKnzpWU9gwC9tSWH+wVcwRskn1tYwm2z6wd8I
	mpA8EGyplL7SNfkgA4qW9tOCChfC5MRFo1QwHUK9iRrYi/2nykfZuqQW7qbRE/Ak
	Not1y19Fo1J1PSycHwMcTedCXCbxBO/tTpvpsBI0jzS+Urt7jTkveFOdGBHy5tmI
	pM8wTv5y+QRqMjfm2teUdrjVd+1ZWMKCGaKBxIddAWwYftaL9gkAtXvQrekEwmJC
	tpYU3yG6G3hMElZhWCoXksObUfoHGAp4kjSChOlm1pvdCmlhD4TWol+Va/dpZNzR
	900wkqQ1G+WzA0ONyG3RcTtApHpykvNXRiFz4fwpyLOdXA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e93huny7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:31:16 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e57359997aso28047061cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:31:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759527075; x=1760131875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XlsGbOm2FDLEFD7aIg4S0aSCsvAffT34aitDj5CRKdA=;
        b=xADIcyPffKt1KBinCX+nDKXWxNjnAE0cnqhXCd/JUTsV62pz9tTmil/Bhk7LOIcn9B
         O2KJaO54fBsbAhAVAGp8HXkMNDWurow5VwjpljXGC1+2ygW7e8oi8C2AWm7uyQbyQYRR
         bCmRxJFaB0UyKmyCvM9vCaPgVt2nJCI7pg0SnTGyi5gyWH6ebwpn2VvmRoeJJNTk1Obg
         evQJPCY591lr086GRmovIoNg7ovhtoJ0THajLLrfX+10hDKnCW9qio5JKXEeJqHQoQpI
         fdqkST0jBjPsjtyl//JhHjnGXqW0EYF1i+gYQuAfde6XCzFBydEvYKOzuM/wKZQbr0Or
         Z32A==
X-Forwarded-Encrypted: i=1; AJvYcCUeUsNw8FSDo5HqBKaSXnBPQ38C+ScQIC1R/yYzjmfe7mI2ZSho0GezkGLsTmRij0aWo6SOc4u69+EM@vger.kernel.org
X-Gm-Message-State: AOJu0YyxJONZaqD37eh2DHsTtpF/c/NTHGytSH8xyDoqL9D6fDMcjFMG
	5AGsqKODuvDrZLrN/gU1028fZTPYEY4SpjwcSpe8GWAUo6qgOfCvWduHodC2Q6LP6EyoyluU1k0
	Bq5rUJMJeNvkijmRcnF1sPWmJ9TXWpkdhkk06JjJkTufpaWFb0AZaVpr9DWGgbSq7
X-Gm-Gg: ASbGncuxRDdqd9UtTM42JXEVd+PpUUFXYAitSBAoOa2sT7nLGDwETALvm6ZsJ4+DYSz
	OGosSwOMsjvlISRWCjP+v0gPF9KUpU0Knag4Sz+U96pMEo7zOHHxzIdG86jCEclYwkSsaKewm6r
	Zw7Wxk9kco9fTNiQowtBfXKoWNcqm1DTRym6lnupikLA7Y5HNMOPOiaP9wCd820XYDkABl75GLZ
	tx776Ih5gVN2Ph1cm7g/1xbQt23z33DqTRf26VlzYXgEyMUsoR/mh/+I/dsyoHFtkVJ7UBRgKEJ
	Md8JyVEwN1Zw45wP6ifU60BBfFcMT9zEfXh4ltzd3uZQy+m3B6bISyskBH6wzuUDV1W1tsqONuQ
	Wa4nGDMv0mIheDTwa3FlPYhTg0KgK3419sdm/h+79QSUhlkcID0066SKQow==
X-Received: by 2002:a05:622a:411b:b0:4b7:9c98:aed6 with SMTP id d75a77b69052e-4e576ada47bmr67589691cf.41.1759527074368;
        Fri, 03 Oct 2025 14:31:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2/BooBrQE17txVLgWwDz4q7+nVZv+viuExfysHyo4YY5i2nM1gor8h+dIlgtCUXqJYtQPAQ==
X-Received: by 2002:a05:622a:411b:b0:4b7:9c98:aed6 with SMTP id d75a77b69052e-4e576ada47bmr67589351cf.41.1759527073911;
        Fri, 03 Oct 2025 14:31:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01141752sm2190199e87.58.2025.10.03.14.31.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:31:10 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:31:07 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 01/11] arm64: dts: qcom: sdm845-lg-common: Sort nodes
 and properties
Message-ID: <e5ye5qenwdvbwihqlywgs7kxx22y42vvq2li7gqvr7vqoqsxu4@nnizx2q33s3w>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-1-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-1-b14cf9e9a928@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MSBTYWx0ZWRfX9DAl6lXi8aj0
 kiZWu9CTToEPW+STL2nNKrxjZJcje9cd+JXUi61UD1U5i0dkt9TR+K44dErXExE5Gcv4kMJIgXP
 49rTftCCX+pt5vPc/zs2WmdDHCzTQ29et6MbMFBoT+rZUQxRCnVHb4v0h5cdXzeQ0tGeCL7yRe3
 KLhWLLtgKboxD2x3acNphbOC7osaAN7FWaZvI27hX0NntSwRzGTd2h8NIJ3ZLGtsRs6RT7Wkfit
 i2/oVixqyBGT7WkGZRv4YO/PP+NmRhONHXIkG3taBopkdtfb/g9lhlWz+Ml6ivksK3RYfw3DpzV
 +aIoDBrnTksTfbT35JzxeLoMu55cbqYg4jF3pBZEmZ9QK9/MFcjGOV/ZkvJxrn5OUiyXTX/+9sT
 EI9mIDLvP739QTYOOrFdWoddSyxD+Q==
X-Proofpoint-GUID: QqSyA3IXd7GwDs7U26sADwAjEr9uFOyL
X-Proofpoint-ORIG-GUID: QqSyA3IXd7GwDs7U26sADwAjEr9uFOyL
X-Authority-Analysis: v=2.4 cv=Rfydyltv c=1 sm=1 tr=0 ts=68e040a4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=JkoFm2tBDPzt1COVDkcA:9 a=CjuIK1q_8ugA:10 a=5XHQ0vS7sDUA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270041

On Sun, Sep 28, 2025 at 10:05:24PM -0700, Paul Sajna wrote:
> Improve adherance to style guidelines below:
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 124 ++++++++++++-------------
>  1 file changed, 62 insertions(+), 62 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

