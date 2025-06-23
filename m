Return-Path: <devicetree+bounces-188650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D32AE4773
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:53:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CD5A188CF0C
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:53:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B03CC26C3A8;
	Mon, 23 Jun 2025 14:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TWBxEGXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366D126B08C
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750690384; cv=none; b=U1/kvut4wV1B1bRhLTwSwVfcaeM7d3yXdpnZwHulOFQKsKlL9XiMwmwcJyW/OsObm2LEq6fpGlOMM9m050iYfQtmMlsJnavP1I2jrTreGUtesMLijuTa07Av7tRBaZT506wMWH53IGo8/6YQ+lXh2ZyaGBZ1oBcnJH1BZHZE5Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750690384; c=relaxed/simple;
	bh=R/kxzzgiixlukyr+QqYyh1VnuJlvynBPFO8dfuoRIc4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P6j5glFSL96RQL/sjfaJ7+8ahax3jQU00KSYzXLpdef4ONfLBQ0XrXSpPPAvHB6QaYnKJ+u/GOUw7kOsvyi3q4khma0lN3ZufqCyroJv/5t4PVZ6lgqaBL0z8p3RdHy4PCsklVro4xQyhxIE9RXv1q7aRukypDy8YOBOUXaOahU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TWBxEGXC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N8LaC1005770
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:53:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QjulfjMLVMZNGFwlPLa0QQErOrJoenj2k34tfFvIg6M=; b=TWBxEGXCn82XNsbA
	D6IoejiriZNO2nls1EWY5fETvq9SvbRJRXX3+lZNSwy9H8tnG6TXRfYHqRGdTV4x
	3xmNT3FgizwFi2oAHyviw8NiZIxf/B8+JT8Q+q/jYAqiXWEwZWYMSKsaUdxVvuTo
	VBid3U/L8Ee1ceB/VeM3CWBYw/ELEIle2ojnB0a6qVnsEJ6eCMDwPHdQtWepzTHR
	u98z9Q6zb3DxHjAwNAvsSCcs3p7h6NXHJ5lqpZ+NqY/MbVEx4KeOwmzyMCzu8wgU
	qR5rvPZI+3Y8FGZ5DAw5bAear8Bydf0Ad+laOgAgauUtpXTxRQIsOH8Pb+ieHvQA
	Bkse6g==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bg93bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:53:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0976a24ceso155004185a.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:53:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750690381; x=1751295181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QjulfjMLVMZNGFwlPLa0QQErOrJoenj2k34tfFvIg6M=;
        b=FNSpLBePfnL0qGXDD5CQJ2ekNSEha44siRb3qh36AMWmnLn7JL1QhwlRxVhbg6DXSg
         NYbGAaRsHkcUg8ARmgPmxkVTPwPGVeWDWZZ9HuNOaZ6APN26iDN6cwM8EH4O8xm9eCFo
         XQoYzSjmMfgwH1xRB+t/VuyUkx4Jc/CMkwsrc1nFUDTHzsj+4Hr8vriw3Gt+A6zsgmon
         xjHDaPIwN5y9xIXob6th9jCH7KBsg/gKCwChZklB53PLwnX31NjoDNd9z2wI7mcmWEqY
         UVM9e5MddDr9xDH7UFhnKZNnpDVJFtzcejZNEncqqrMHDh5pIPvSwSQDQhLBxCPUBBnv
         IVkw==
X-Forwarded-Encrypted: i=1; AJvYcCWLcJgsKAqGbz4RoroiUJM0yphq/xMn7NgwoWKG7BIxqWT8GdSpZ3tCnIG+NkaFZs1rcazpt/DltVzE@vger.kernel.org
X-Gm-Message-State: AOJu0YzOku6iNnJ5uIyAWMWYH6dA4KG0A4rk2abbZgva7DuP4ZSDmX1w
	wS1kF9pTIlwOSGAvChD1B+qCKzBTND4/zXi68IVa37UE5L7elCbPL4d0HnYXYL5dbXnsf9kBL+I
	/LU4G/6cG6dh2WFcdJuDDgNYTZ7NdmRAEg+jgOpWbHw4MpQM9pL7bgz6Dghbv+52w
X-Gm-Gg: ASbGncs2CWU/R/Wq6DzYgd1UFPAyBh++HaILSnJ7kH2mkD1E7ho6XfqtpFdPFW9SF2Y
	3EwqEjeRBdqW9OfYjFwGMw57ruUTXGsYbME40ssecWaW9C/oTocFXEx2gSFqYShWXZQuRznfNN0
	U3uKmKyuJ2nu33Zz5KlNE4X2ANDNfcdwrFKcIlnShKgaMh3uYIlXlhMTjRSyngcQCO8BTdDmzRM
	M9KP4zEZjmI1sJx5QPlkJzKzSqUFLqBtVM9r5TsMFl3lFbIvTL1T1xuWWz5fsOrHNH8WQXfXsfu
	5IPfwa/b8HhT8yMkFwNP6Bza7zfYHDeznPL7TvJeF83GOtCImKTcEVT5TAtypXhoqCOgB1pNSDw
	SoHs=
X-Received: by 2002:a05:620a:254e:b0:7cd:14b:554b with SMTP id af79cd13be357-7d3f993a79emr683999485a.10.1750690381270;
        Mon, 23 Jun 2025 07:53:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAVfsfuHGPRp+Rfb6Qn0LbSM6eVDSaSJ4R1Xthk73wPTYr+SBryfjHGfkihaeEDsySZ8l1Xw==
X-Received: by 2002:a05:620a:254e:b0:7cd:14b:554b with SMTP id af79cd13be357-7d3f993a79emr683997085a.10.1750690380752;
        Mon, 23 Jun 2025 07:53:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054080a6csm726628366b.93.2025.06.23.07.52.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 07:53:00 -0700 (PDT)
Message-ID: <55624c7d-0192-43ec-b367-f33c96866a2a@oss.qualcomm.com>
Date: Mon, 23 Jun 2025 16:52:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] firmware: qcom: uefisecapp: add support for R/O
 UEFI vars
To: Johan Hovold <johan@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250621-more-qseecom-v2-0-6e8f635640c5@oss.qualcomm.com>
 <20250621-more-qseecom-v2-2-6e8f635640c5@oss.qualcomm.com>
 <aFloifxONXnQbVg6@hovoldconsulting.com>
 <2a37d3f0-a3f4-444d-8166-f85888a27308@oss.qualcomm.com>
 <aFlqGMWwx8ID_SaN@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <aFlqGMWwx8ID_SaN@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: f06mSDZFdiV-B5PszjV0zEEusSW-NJUX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4OCBTYWx0ZWRfX7O6ngITsWRCB
 65UIVEjyO/bZootA9KcJDa0PjMg8TvNYd17cc9/30aMQDtUlvo3F+0ZS6ohYdT0sWerxR4a2jff
 nv06IWfSVkx5nPi9fsOvVf6yToz/G+f9rcxDZPngllr6w41MA4JAmtzII7cKWOcYeesfeX84kJV
 xHyeNj/0XZAM8Ucj6/1vRn35Y6HHNqN2TGVRw9SxTZOHloT9NXyaskJbd7UeP6fcA8+/K8dxwK2
 qX6nYYl8SpiPBI/fFR11exjr1gKdP44bzwBzzswzzx/zjeiX1VH4LLs2pqxaWPaa44EALZ68pCU
 544tQQgA6p0zr8idCHgVBGONY16H0NtwuonGmlVJRsk/gajLMT+Vx29Jik8vLqHjSbFxhqbdPZT
 qQiHek5o3LP69A9SNLdAjqCQ85ZCci7NIHgEDCN959lKbjVHpdPLGSYOi94Ogu/YK9wH1AhI
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=68596a4e cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=L-5_I4KBUgPuGXmJ_zkA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: f06mSDZFdiV-B5PszjV0zEEusSW-NJUX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_06,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=832 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506230088

On 6/23/25 4:52 PM, Johan Hovold wrote:
> On Mon, Jun 23, 2025 at 04:49:22PM +0200, Konrad Dybcio wrote:
>> On 6/23/25 4:45 PM, Johan Hovold wrote:
> 
>>> It looks like the efivars implementation does not support read-only
>>> efivars and this will lead to NULL pointer dereferences whenever you try
>>> to write a variable.
>>
>> There's efivar_supports_writes() that is used to set the EFIVAR_OPS_RDONLY
>> flag which then sets SB_RDONLY on all efivarfs superblocks
> 
> Yep, but it doesn't help when attempting to store the RTC offset from
> the kernel (since that does not use efivarfs).

You're right, that hole needs patching

Konrad

