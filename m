Return-Path: <devicetree+bounces-251992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A49CF94E8
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 17:21:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE580301C961
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 16:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D543246798;
	Tue,  6 Jan 2026 16:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n97YMzi4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZSDl0Q/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A5324BD1A
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 16:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715911; cv=none; b=cCrgKAyuN49uH2FSn5242+QkfmSBBVhjdmpmSGINn1JB3I35UF3J2mqiiRfPyaXS34OPs37AB8y9U2tr4R2NgI/Vfp870uBbpewhFUiR24OXfyIsSN4CP+7/C3e8SH9go4METfMovjzmXkfPgLgjAII5dXpESwgZjx897//JG94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715911; c=relaxed/simple;
	bh=kZAtNkxcv9VwF6rLzyrF0CTBPBAllpQKs44XUlqYna4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U7vG7+vmxVqbA6YdBHvucXox3/xsJOoB6ObxX77nUsTgnzU9Hodv55E2tJTwgaoZQGEWtnPifpoYyCw/0YRaeCrY+Luy1K8GG3vmoKf71bE6uwp+y5CCKcwp33OMOCBZKori1JE5hlrFLGWh1b3qG70IQ+xvjQWkjkVLKorCelg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n97YMzi4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZSDl0Q/g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606Efl9L322882
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 16:11:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J2OsZw1mwR7uhMWD2rOzlNZA
	sP8urNJZ/6RGPdx2j4I=; b=n97YMzi4zW304AEXGQq1FGYV/gGV1YdF7qsOerHC
	7Wc6SUTcSXTOQBJfikCK9WEpp2SD/YNEO7UlUNhnP9PK9NQi8k4RgBVCZEWZc6cw
	68I+cDm2t+XnTQLaGWZr4HsonFU4tXf2+3qpAPwwAg6cHN+ftrWbRZ8ooU48UuAm
	dq1YFAWdp8oGxX3yUHbepp91UQOOTwdpaxULZ/7PochAjsGVJjdcKgwcIig2g6/W
	72279bQVHIhA29TjRgGCKhxC2mBy9nfxc09YhHZ2/mj162X3iahx6G6pPnfh2J3g
	4mLhSpSTWiSWewWGIg8I9MCQJd00/yFqW0xobQyxQSoB0g==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh4crg9fd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 16:11:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee1b7293e7so40643791cf.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 08:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767715905; x=1768320705; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J2OsZw1mwR7uhMWD2rOzlNZAsP8urNJZ/6RGPdx2j4I=;
        b=ZSDl0Q/gYMe0xyZcszsUgltyoK9j7tZaq6I+h3z099fl0VJ+Fe8VUgA0obojxcxbxx
         ucNs9FaN62Pg0GU9vzgJsloig3mDYPJcHEWkrRAZiwcw4x1BT/QrDnirb8QrDzhLXIXU
         e2RT3neJD9yqkYMJUhxlyfcDIFlfQfjT4e+xwIRN3ivmc7EAoYXXPYJRGbjarEcyEtzR
         7O8ZiCOyOjhwV7ff2o2qPimbTUjk68hVjZNK7MpVm1mRQuALbpG06fiqk/z2nt1RuaoT
         iDcDorYPpXm3OpE0RRq9JxC3XsqSf9yhN2GhullH9ORF28zO3xzgAj720QjeJdUoLGgU
         7sTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767715905; x=1768320705;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J2OsZw1mwR7uhMWD2rOzlNZAsP8urNJZ/6RGPdx2j4I=;
        b=iYbI++9+wN9pgcQE7LGwQTsDf5E8+CuSyBBv8szEa9hGZVmcU4S3xO7RjSbaNg90PB
         k3enoBxd9eXdiO6k4Ao3fmSBxBIbLtPb48ghONpEFuL5uGb6U+DWsLLQsXnPzQfBZwCy
         78dXIjIm/60IkIEFEXn2YgHjEYQCBynjYGukJqcokiAC0KULqR5kcgYHpRMdqdEGfdfT
         t6Ju+203m1w5+pdH23GRDJjyyJrvvXgVeGlGRLs8t4+OmyygAzO0+jeRFIGSPiHMiB8N
         /EvZE5RUTkI0VJ5EsyND7DxGrGdqR8EWuaMkrURufOldaJulJLXj264diTBAH+Wj2i5K
         LMdw==
X-Forwarded-Encrypted: i=1; AJvYcCXTASqjYfXx6gBEhH07rKP6xswzwiMB4Lfy+BQlLhVrAV3fEKmqYoXrjooowRYiP30PHVcv13pccXmo@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc2QgZQL67ZFBpKa+xFff133Qmyei3gWgetXmfNJhXitC/cVZ3
	7D51PPvYNEwWyYzqa9ekb4CxL8m72p+Gi2otr9lL1ArAjVwyrGyUsn22Dih8eZDL5GP2eykYger
	/UAhnLqFXzkNddJytBvDFVkwb9pstct9sONvQv5h2xUKVU22JaLkKtru3/l7phY4O
X-Gm-Gg: AY/fxX7NVzB+Ht7004vWAtQ0egOMozqSmN85xS70fz+ChwpJdmY7QO8Fja14kNzWUy/
	Hldgh0AB3maGujHYp3v45pT0tToeMg9WXEcjv6K9I4k66OBjPbDMkfoh75yNfepFkKd1yEAIA0b
	O/PKcwI6fH1Fea1/PMSL6px9k1RI6iEy81hCl6OK9RBc6JwZCEGt/Uv3ZbiotPBh6Bu9nGAi8m0
	unNwFvmHF7fYPoSRr86AWWo6lw2rugVn893VTqOGM+RFD7jpSm5JIxgUnoknjjXezeORx7S4btk
	QvCgsu6yaCjzYybBo4IeMltoYDRRrK29L4AjNAZkQ0JV1m3nYEUaRVEONgVa+I1+dwFnN1MZzLP
	Ura9W/CY8CZdSNDavDiiQ/UqPp1FpvKKDae7nfKNTbhYcIN2LdX8qyLb/8jUGur5daIHg2MRK2K
	pnfgpM1HcxH4reHumJNKhUxNE=
X-Received: by 2002:a05:622a:2505:b0:4e8:a0bf:f5b5 with SMTP id d75a77b69052e-4ffa7822b09mr47889231cf.73.1767715904748;
        Tue, 06 Jan 2026 08:11:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJimvHir7EfJnUsNQVjQogGub7Vv8k8sPUI6byhYtpLHhCYNvjMIshMY0ypBffsk28UYXAJw==
X-Received: by 2002:a05:622a:2505:b0:4e8:a0bf:f5b5 with SMTP id d75a77b69052e-4ffa7822b09mr47888811cf.73.1767715904378;
        Tue, 06 Jan 2026 08:11:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea8e7sm678067e87.18.2026.01.06.08.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 08:11:43 -0800 (PST)
Date: Tue, 6 Jan 2026 18:11:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Subject: Re: [PATCH v9 1/6] firmware: qcom_scm: ipq5332: add support to pass
 metadata size
Message-ID: <rpijefy67qokw2ehe4iv6msewiwayiqdz7paalgspg4ghjwzlr@7q6gdoohuuis>
References: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260106105412.3529898-2-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106105412.3529898-2-varadarajan.narayanan@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=V9FwEOni c=1 sm=1 tr=0 ts=695d3441 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=EDSBdl3HVflM_WRIKtEA:9 a=CjuIK1q_8ugA:10
 a=ZXulRonScM0A:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Xk5iI-cJ5VvqQiFiN2NJDb3tsFCzGGKo
X-Proofpoint-GUID: Xk5iI-cJ5VvqQiFiN2NJDb3tsFCzGGKo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDE0MSBTYWx0ZWRfXy9dV26OTaob8
 BZqPKNneuwgojjjcaR/gYHqBUw7UzYEPwCOiPJwgmgQySD7rA/3RxH0L1IT3xibMHSlDFYXxQE+
 5DxU91/3adh6MGrtbCylxxyvc1SaKenLA1r6737f4vIxoM3Ufxw15VSEY3TRoiqQhWswL0pj5le
 Grqmp9fEJxzUfvibBuZWhh9lbuXeAAius9Wp5O9Mb10yFKY9ab/cLvccT/uXdHWKuNHUdhACh+g
 FWDFpINo/KL4OSNNLOQUVediTdhZ+TwmdXeOIjQGjJ/4zYL/yDcHM/2xzdEi5bVso33ExoIi+eY
 EeQb29RhfG4e2PTLjvXS9G0coBs5gUq2NWmi8mbFaY9zAOT6zfbdfzaJNbV2mqoUNvd33p6Cph+
 Rwfn6vhfU1Rp6yrmVQoHoB9OUHnqKBiHz/iQ49oO2WGKXgSnUDhUHktlCr1LY/9M8mlIygjwU/G
 kEYCZVePOBNmng8TTlA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060141

On Tue, Jan 06, 2026 at 04:24:07PM +0530, Varadarajan Narayanan wrote:
> From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> 
> IPQ5332 security software running under trustzone requires metadata size.
> With new command support added in TrustZone that includes a size parameter,
> pass metadata size as well.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v9: Added signed-off-by tag
> ---
>  drivers/firmware/qcom/qcom_scm.c | 17 +++++++++++++----
>  drivers/firmware/qcom/qcom_scm.h |  1 +
>  2 files changed, 14 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

