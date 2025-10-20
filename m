Return-Path: <devicetree+bounces-228817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C416CBF0E97
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:47:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A8904ED1E6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:47:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BFE2FC890;
	Mon, 20 Oct 2025 11:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m6Q3p+Sm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDF5303C93
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760960816; cv=none; b=k+uzeQA90Vs/NnollQjo0YAVUY3w4C/l6JMP+2tMcuRH5eN3Xs43+XrYHQyqzCwq7cWyHRQeTtAzjxANZYLMeXFUQ67gAv0KjNTwR1TYOMQj2Yf8daTz0czU+ilvsbpcc8yiaFa1zJ/g7hyXdBqUnJKIf8EotTA8j/SbZjYgQLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760960816; c=relaxed/simple;
	bh=JFiozswb4GIwcHmliKn473FjPA/idEM/isbif6byJ4U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=c3cFzuyrIC7R9RYT4cWFb7EF/BWmV7QiwpUnBo2FY7aLFnWpb2IItw46dWPK3SwBZIFnpo5nIt5TZr0Y7hE1QBY54Xo1harM9Il8hWSqIoYxDHJzWufI/KPQBcAyLuYWYi3+Kx+HWL1GBuvjw+xv91AwbMdhUR2JPXCe+RgoL14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m6Q3p+Sm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KAYcVp029041
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rm6MWCmMyPXrv+yc3ILYtdzHGcjXJf3gMY4k9S9ZBr4=; b=m6Q3p+SmEku7qT+Q
	p72G+slTEFiw2gYOI2o5MzZYVzlNt6dyW/mOHHVpOcuYr0RYQklGgWaqpojzBmRf
	OJs93sX2BXAoNc83bsmlHueMpVa626jGox5koOPpQ7iRbPQu8YPF6Fqmf1+0Bzk0
	XuYHTuoNxHpqGqPhzUbqqdQr7PmI6oI1e9uzAIjJQCm6bG9VOZKyzyYHyMQfE7wB
	4ptwE2mlU5d2+/V+5FmFWWj3O0BMycGFw1NS+uYyFo2J3n9NY69M4YVj+YV7Oe4B
	gSRqyYt59BqL6d2cCZvfpIx2Cvc1bPm7GlEDwHBSPWEyybrIadK1R233+snxYxSS
	uu2qmg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v343vm8g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:46:54 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-850553dfef2so15267956d6.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:46:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760960813; x=1761565613;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rm6MWCmMyPXrv+yc3ILYtdzHGcjXJf3gMY4k9S9ZBr4=;
        b=HXtWs1L8EnZHH99HHhCPkmoGMUwvoJOFRZIHks6vLDE4+R21scI0hPwqZIQk+/HE0p
         pGVCvCGF9TqiAJF6sYt8SNwcf8NIevkFdZD0ZJP6/xjdU3Y+g46BIHDJUGyogwWoG6nt
         NCOZvt/8JBDSgHh3u7up9jfSbZ/1QujTlTb2TrK3+jMo+A4GCjI5VeZtgayam9cu8xxm
         kyyK1EV00rBL0BGW/BDF+2gbvRtSX6TOXkwW2hoCjQT87MSv/0x0mC8oQBGZ1YfHQnkb
         qkUcgB9wKkNsSjux5VA1EdGIuwu8qUepaI0AGZN7SkCSEyPL4gl1vuh4uu699/nSgoLk
         8EDw==
X-Forwarded-Encrypted: i=1; AJvYcCVsAiyGRDEWzq5jE88A1VoNtZ9wh6q4HU3BmzagmyEkcq9UkSziiG4gjOnu6j0rMIHty9wftmk9XdIC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3oQfZpoHRFpI6utsUv0CzgIGjKwEqe4VbiMf2sDe2iztj3AgI
	9cTPABxdM6k7JS0Uf4YcEEIYienXSpcjlDsWoJW9OMPmn+HEON100PHsrGLvTRMMImB75nZkeDO
	Hp0z3YE+8CSGayD8kdfBOsH+HnHSH2O4d3H+r42IhjNCHHljLqBDW5bijcK+cSggK
X-Gm-Gg: ASbGncvWjXICgC6esC8yoU2XI5lsWlYUtYCSwdQhXbFRxcgh7ZojaxKknrSCuUmPyUo
	15eU8VP8d3pNmzLFJ3TRfWh2ior1P315aG3yQC2vACfPwvpDyDVchCiwLM0eggmfqFV2aNNUIX2
	O9tkToOzgesY9ey+gTFI+RSGKs5VOF45kebeNp3vNGYPtaOISze2Mrs+SGtwkuoZB/FEHcPkc6A
	bJ9iJLqrVqgqZsocr36TaS3kX6QIG4RCUU7IwCKa8WLTOiBKDqxeefX3x2tiVTx3sVCp5TsZ/yF
	Wos0DTvtOMI+pqYzWaTN0j9t8Ta0PPOD/EGF1h8HWrXKTtaHPlsNzM1Qxlp/dcM0WYjVi7g4ndw
	OfQ0NbjcTwknTMn7mFE1oaFclvAwoFE0tDPuiYtfHvzhVwTvaUYW+HacE
X-Received: by 2002:a05:622a:164b:b0:4e8:9126:31d2 with SMTP id d75a77b69052e-4e8c1ab2c0dmr25835621cf.5.1760960813370;
        Mon, 20 Oct 2025 04:46:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0ciRktPb03dlEiAGKzDkyoD8TX52gJeD8cUeDXieeIygJWDMDsI1gkSlumLSnNzXkAMMGzw==
X-Received: by 2002:a05:622a:164b:b0:4e8:9126:31d2 with SMTP id d75a77b69052e-4e8c1ab2c0dmr25835501cf.5.1760960812952;
        Mon, 20 Oct 2025 04:46:52 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb526175sm770447166b.56.2025.10.20.04.46.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 04:46:52 -0700 (PDT)
Message-ID: <6491e048-eeff-4216-be03-cf14437b6788@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 13:46:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: lemans-pmics: enable rtc
To: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20251017-add-rtc-for-lemans-v2-1-0aaf174b25b9@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251017-add-rtc-for-lemans-v2-1-0aaf174b25b9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: I1Z8rRGU5MM2Zn9UklaIXX4anm2Y0giC
X-Proofpoint-ORIG-GUID: I1Z8rRGU5MM2Zn9UklaIXX4anm2Y0giC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyMyBTYWx0ZWRfXw+dpbzOgwQkm
 VIApZmOkDun5iTJ02ROYhdlml8s6erXwTNt7dX6kN+ALjDAJBdq/WvDBbNS3Y4COL3Ka0BXKrwh
 faAxw7gIETQqr6B8irtkA0+glol/PCUDsTpWg/5pEjyrHI7kwWecn+forgrhXUAAvxtcVImSN1t
 yZOtqRkydkXiBgY2DnG2FUear01HQKMqWle9Yt4sA2Ej0DcnlAEESTNNvCXn0eeDtE8K04J8sBa
 OnhFy380NrlppzdvRZSDkf5rmRBSvNv0ZutSl7B83usHIKWRfjc+U5Chlz0BWFQBjNCjSCIOrP/
 jwZUB3I6dWJjAIdtxf/u7+pmRiz91iHjXRPiTH8Z4P0MV0liogWJasHZUvNE+topG01lZcxHfkY
 hS+X5rIQhI730ijiXmWWuPpEi6y7cQ==
X-Authority-Analysis: v=2.4 cv=E/vAZKdl c=1 sm=1 tr=0 ts=68f6212e cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=xE60aKYvQSwzfKn-tTsA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180023

On 10/17/25 4:56 AM, Tingguo Cheng wrote:
> Add RTC node, the RTC is controlled by PMIC device via spmi bus.
> 
> Signed-off-by: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

