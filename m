Return-Path: <devicetree+bounces-217251-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A57FFB57205
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 09:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 598434406D0
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 07:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A052B2EA740;
	Mon, 15 Sep 2025 07:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AYcBq/rp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A229C2EA15C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757922609; cv=none; b=UeVuScXscKe/YKSPZnyT/+yCFvKQLtQTr5Wu6HfcxM868pyh4dZgactLFGJfbnCngVl9I7sYGv54zOriWbd5WqdS3Cs7pQa0WahK3Zp1ExaZnLJowBrRP1AUBGTTFdeQR0oX763BFnf9RwniXj0bFnHhNsIKrwFTcGEjGLFww+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757922609; c=relaxed/simple;
	bh=imIwfrWHj9CQmVA/0RQBUojS0AI0wdZSgd77TEu3Ta8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hDp8IWRm47vx41tBFUTYCDDESrqoq78uvVYoFUr9a4rYmhpRRcdsMr138f7KLbbFAr9kse+5hVouIpmGVSgey3bsUJV4BoSAwTCvWTSDEFk2gUyA9qtMAjP4oFDzqKfRCvXVWjKCeSebTYuxd22hqEerdvg25BdukxPIDBINy7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AYcBq/rp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F7I4q0031595
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:50:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aFvQk9L7Sc2ogFTfxkGGaTbBywW0snMelbktXcT6biA=; b=AYcBq/rpbD2QYOl2
	Vheqdu7hdaICz4pS+OWcBxCqTLqbcGJB1VWwddADXBRZxUOiPVtTjq6X77fqdSkD
	4N041k8wIxUbo+/t3c2BDk+rkrrg0qvuSbinBlUzw6WYQH6/aXRXGvQD3dxEW2PR
	WcNS9GKOfm9C4BujrPfpdD7nRVafEXHKMC7caQn6gWsbe/e7vn8ADGf4O06KhLNH
	saSmA/s4ZS0i0h22wBkBk71nwtREAn2qGPA6E7a+G+1J5oxNFH/XqQddckHnPX3I
	0WPCA5pG1dPU2mGKrf/yf1HA3snef0KrWqRIm9YBLRD2Ql473Gph+Jo7l9+d1giY
	KXxrgQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950pv3y85-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 07:50:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-77c37a2c874so3081346d6.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:50:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757922605; x=1758527405;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aFvQk9L7Sc2ogFTfxkGGaTbBywW0snMelbktXcT6biA=;
        b=mE5nBYFNwjJFtyuAyENdLw0kPA69LRzJbEMf4TA5PlKOcuNNuWLctHQCx98Dc74Bq9
         ZaTJ1Y0z5Jnmnx/X5zWT5Z1QLU8kRh1p/TAaVntZifU/qXhWL4koc4Q5GWKe/U0r64K3
         kHcduATvke0L0JLcQhl6KtiZm7l+PtzbbdPvY3/uzjUpoIVb45NDDlpcDw15NpKrJuQu
         w9tm28ZHML/rw4U3e1bjMRysGYlGFZz7Sq5YwceMKEFEMdPXs2vnBKFgf2yuFGnp5YoM
         YsXa2gWwdilKRrh3Rc/8i1sScUP2cMLeiMFkngDykRcv+tRPTu8JlWc4wMVoziaeDIGE
         BhiQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKEa0a7kANMvy0EVrObZgoOCHgbHgWTUgPQFhFPHcEbojIxpm8vG0doD+oyaLX87jA47+lWxlj6mkb@vger.kernel.org
X-Gm-Message-State: AOJu0YzMpR5XIlGwRcoTDE/nM0sx/iJzpe8VYt61kv0IbQW/ebgw/zhm
	2O7tqPkTfFeg9qHKJfr194kKKRFn+9ujFQuMUXv/IIQuhsWGkRhe3NPEWeBfxApSj58oDnZWmxD
	nTNchkI6Feq54TNvdMyTBC6cl2fucel7vz3Y/m+GiNyiPtrlc8Hw8vTDLvbj5LYCy
X-Gm-Gg: ASbGncuy4LESAs+CQT8IVFDsfwXHqL04FsN9q15Qxkna3+bkPS1jfZL8/GjF7SzMH/z
	L9w8Z7imCI16iu6a/RZg46DiWrGqzz1t2awynpFit4K0NkLxsf2t2l964Z+TnR/PIae9UURSHIW
	giti/z3GBooqvD+N7KOig9AXNnlZpBSLNGul8Z6goDAugx1QOyx67mWig9v1dhJCgztohyBGqjw
	e9xOfRLgn/1EZczpV675hCGD/ei23+2Gp+2K3pBcJ83GSaK5FDGJS81vlkFUfbfoKZTAwJNW4dh
	nx44pEGtMS9Jo7mWAZNPZEwTfEZFjdoCj4Ugczg3HjefK27onF7EjwLGYFk6LWsSpNJFunw/QrK
	VSVPhd5Acs3x1JdInsCOB+g==
X-Received: by 2002:ac8:7c44:0:b0:4b5:6f48:e555 with SMTP id d75a77b69052e-4b77cfd4f60mr94842211cf.5.1757922604567;
        Mon, 15 Sep 2025 00:50:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAflOJ54Lq3cHAk5vIwFH55/fPyxggfOmOlLP0TjHN6i+XfS8IJFnTqbJiNsxJwWBvExHJhg==
X-Received: by 2002:ac8:7c44:0:b0:4b5:6f48:e555 with SMTP id d75a77b69052e-4b77cfd4f60mr94842051cf.5.1757922603937;
        Mon, 15 Sep 2025 00:50:03 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b3347b90sm878500866b.109.2025.09.15.00.50.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 00:50:03 -0700 (PDT)
Message-ID: <c9c0ceeb-d9ee-49b9-a8c9-f4a4d13ccd96@oss.qualcomm.com>
Date: Mon, 15 Sep 2025 09:50:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: sdm845-starqltechn: remove
 (address|size)-cells
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com>
 <20250912-starqltechn-correct_max77705_nodes-v3-2-4ce9f694ecd9@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250912-starqltechn-correct_max77705_nodes-v3-2-4ce9f694ecd9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NdXe4iuuu8EVjNwi_-CvmUG0QC6paJSu
X-Authority-Analysis: v=2.4 cv=PsWTbxM3 c=1 sm=1 tr=0 ts=68c7c52d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=xr6KYs1_5vtqEaBoEi4A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: NdXe4iuuu8EVjNwi_-CvmUG0QC6paJSu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyOSBTYWx0ZWRfX0Yptd3U6qb6T
 1DeiAhiHVfdWLpNDd1rUsw47SIi+Y555QFulcpykqbYtcUMV9Q/h7ElyPPuBW8FJEhzc3hJOguH
 3IhklwcjzrpzSkNLqVNS9EI/IOVs6bp4z3t5nWT4gyHivjx+t5j1v4oCSnC5jzgvhspHhfQiDA4
 S9nPtFer7rB61PFmrOzlhkxSSbN/r4WmGHR/waI+PaXVWFTM2N1APBlLlGBEans5rTJ+n1vnlvh
 u5FPvnCRmVDiFI+5X15X0Y9QvV3ZWCF6iIYHwLzG9P2dszWI9C8h2/ehEfwHWyBbuvxZuGfV2fB
 Ug3IaYNmyg8GfmZ1z9ypWQ+cNsxj5kztt4xcGzBqLbIxxu+i2nHsxXWNtgY12HfzaWfFvecZ2zh
 w+7j/aix
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_03,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 clxscore=1015 malwarescore=0 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130029

On 9/12/25 6:47 PM, Dzmitry Sankouski wrote:
> Drop the unused address/size-cells properties to silence the DT
> checker warning:
> 
> pmic@66 (maxim,max77705): '#address-cells', '#size-cells' do not
> match any of the regexes: '^pinctrl-[0-9]+$'
> 
> Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

