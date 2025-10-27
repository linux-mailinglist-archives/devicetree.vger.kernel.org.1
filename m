Return-Path: <devicetree+bounces-231451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE2C0D404
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:50:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 46E641892950
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:47:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 871312FF14A;
	Mon, 27 Oct 2025 11:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pDTsJKTw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A68962FDC5F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761565612; cv=none; b=QJmE3K54J2k60KErvg9ua/FCwSfC++TAOZ+/dgxIY853fYD0dlY0Syo6LfnQMGFs5IP0xUlkA6f6fXWS6fYyuPAgjmrWxpG1aO4dbOu0yFUuf0BwuBvqQXN6FB8FASzvANEDgfWMUydMJa7CSu34rI9qXJBhXA88oi5qv2pICv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761565612; c=relaxed/simple;
	bh=sLSDLFIycjwi5DUJiwWXROI9mVj8Cx9y+PjBFCqILz0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pvf3LtBxyBimP2VQ34vcuMAYeM5COLybZ8JFmX/0uxjknI/0PFIVfcrjOI/3wiUYz5hMCeEsZWBe7u9Ox0kutVIuOHZp/cUHgIBmPAqZyJlYoIWmTdkLwNKo+0+Nl3SRjUSJRCKFVTYVep9xNdvrtdIgDDIKTy0Bqr6wIw76Bgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pDTsJKTw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R7JvVX2059268
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:46:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y7FbXOdWgkLEaT/XePs73VoA0pwHdHNIszOesKkyl1U=; b=pDTsJKTw80qZEM4p
	msAQKifurwKK/WOXlgyv38815ZJUFoANG8Cc8zqw/J+YarWrJfnTp3vA/wlE+A0p
	vxFIIzrevW1+Q3N8+INrtIbl3oGmhjApl7fnxMqiLXtignZxraQMijGnn1xBmgRd
	K+5HiITBbY/e91hsmmExAvMDyRJ0GoFjf9oi95UO4YthG2NkFYr5DK44uAe9QiEo
	bjjXeAdbSqWXc6KFaeY0eCPSGTa9JfgX++5gWB7GDZWKbAgpbPAQ3Bb45YiqPhMC
	kIw2mhqLE5ilRvWgLO15oscsRYYkcYCFyRForsqBfTwpGtws0tUVM0TA4J5nESaj
	DaP4Dw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a248p8qj7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:46:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-87ff7511178so407136d6.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:46:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761565609; x=1762170409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y7FbXOdWgkLEaT/XePs73VoA0pwHdHNIszOesKkyl1U=;
        b=VXXospNYX5NKlRjtIrCqZftxg8vrFiWPwlM88sBODa44e0fkM1KC5uhnH4vSr9m67V
         5Cvxs0u0PnjOdN6VoAF64ELvqHtGQ14v/MZvbwyQWHP/KmGcDwrGV23DV3m3XFPa5FIH
         MJeBfacwp/l2HkHXTajlgM6MtkjJyVEknoEanVNU5uSdocwmd+JF7iQurAjWCmRQnBec
         twaKEUl2lww47iRaT6ngkETY4Evt4pHeX3WbyiRpsYt/1Kehv3sM7rtA+Kw6Xq/ZN8+i
         D0pNsEZP0/fuzG2KZ/t26lqMslt8yF0ub1LVuKD+CE4k3379Yf4OSgL3nylDlriMUzGq
         U6Wg==
X-Forwarded-Encrypted: i=1; AJvYcCX3oO3XqvW3PiD7D8er2gi5cXnJT1w2D6Ypf8xkt7klKE69lcU2Ga0mqIH5cXmxh129CndASk8OqWgd@vger.kernel.org
X-Gm-Message-State: AOJu0YzoJO1B4sj7R/653989kSKowThbJXH3gPLTfUocr/r2GM/zu0Gi
	AtG8Ya4+0IZ+UUg+0w7xVCmbrEPx1W3lyrHgzKgiTYDlliaqnSW/nSOkc1Xo0uov2qED5lPxi7N
	DrEBAjV7pPUeK4qCuRhmxGEmg7hMdc330m6pUJswzSv6ojVLLfJ9PkdWyNFlkTUqg
X-Gm-Gg: ASbGncuQyppekgTA0ujcGnmOY/zs7/S3JEc3C9fpXMZgyQMn5OPzaHJAmhEJzsKPl1K
	qImfh4j3VcbfKGfUc5TorWzHM9Y9FUlvuxKWjLfO8g+LYhHcoXTpB13ukxEfiK4Z+pdsKpUAOX5
	oQgMA1ZuSXaG+ECEg/1WIg+boH7HeAmS2Ff6RKYlhG5birTBvnaKrsuj7qCNKPSoY2dQqYbUpCn
	ixVyCrKX3K9C0bDytwvEdFt/cf1f8HcT97UgxKlchTAkBtkyR8IaDUrYXFwLHjOYTnawW+karjj
	w/cQbG3xpr2+M9ZO2g8vjODriJM+SdWf64AVcZYPn6nrE+dOlc4oTwU/e8tPrLQvv7KsDsy6lDP
	JBrM/vS8kJoz9iyJILuVEruhmm/0V8vN0BwHcA8c7RujquRprrwCWQgoc
X-Received: by 2002:ad4:5b87:0:b0:801:2595:d05d with SMTP id 6a1803df08f44-87de7138a5dmr193035476d6.3.1761565608830;
        Mon, 27 Oct 2025 04:46:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFcow6r/0jMtGxR59KvnFS4Y/c0woofpjI9qJZXXjOHBNMXUDWc9LAIdY1pVDEfhj9Vve0PMw==
X-Received: by 2002:ad4:5b87:0:b0:801:2595:d05d with SMTP id 6a1803df08f44-87de7138a5dmr193035246d6.3.1761565608298;
        Mon, 27 Oct 2025 04:46:48 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8ceeaffasm671391966b.45.2025.10.27.04.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:46:47 -0700 (PDT)
Message-ID: <22ad48ac-e054-4f2f-a5a5-8047266ff4cc@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 12:46:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Modify USB controller nodes for USB on X1E80100
To: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>,
        Val Packett <val@packett.cool>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
References: <20251014022121.1850871-1-krishna.kurapati@oss.qualcomm.com>
 <d0c18094-7234-450d-bd9c-e9f545de31e2@packett.cool>
 <81367b57-f60c-48a6-8a59-7e160c312686@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <81367b57-f60c-48a6-8a59-7e160c312686@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Zvzg6t7G c=1 sm=1 tr=0 ts=68ff5ba9 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pqnWh8UqMPAkMZ0kC3QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExMCBTYWx0ZWRfX7X5dqSBP+kGG
 cUl1Cjc0yIiiMJK+uTvJd4Bl8qDpfUw6R9WYSySq8Q9hduAV0HmjUxxj4o+2CAg1IxaxFIppCOx
 bIpv+KQEnsGWEQEiFdD1FBTq5/EgEwhjzPz7szco5+Mjdsrn+rPfeodClGSoHzHwUkiDYJDQtM2
 U89MUgavwXjYiAC5bxwivaOomWJp9dbQ/bm3qc08OLpI0af+XVUubnQ9nS5Kg3rHOH/3J/J6H2z
 VqPZJPTkphCJ7JQA8O9sTfiJOjP/z+cwO6/EJEx6aafeAHKh+6e05qBPnhrsLp0xLzMeHFZTGab
 iywDZbBzJet6KKoRsczYy95l4gY0iFlQR0diGQMijVMnquztuFteXdSnfq+Yq+k4TQ6Z/rySh7d
 iy8ZYfxLjmVVb87Dw4uEHxJL9CA88w==
X-Proofpoint-ORIG-GUID: l4oY44DHLyQt1kcNlgbo7ThALMq90C9C
X-Proofpoint-GUID: l4oY44DHLyQt1kcNlgbo7ThALMq90C9C
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270110

On 10/19/25 1:35 PM, Krishna Kurapati PSSNV wrote:
> 
> 
> On 10/14/2025 2:30 PM, Val Packett wrote:
>> Hi,
>>
>> On 10/13/25 11:21 PM, Krishna Kurapati wrote:
>>> This series aims to flatten usb dt nodes and use latest bindings.
>>> While at it, fix a compile time warning on the HS only controller node.
>>>
>>> Tests done:
>>> 1. On CRD, verified host mode operation of the 3 exposed Type-C ports
>>> and enumeration of the Goodix fingerprint sensor on the multiport
>>> usb controller.
>>>
>>> 2. Modified the dr_mode to otg for the first 3 controllers and
>>> verified role switching and device mode operation on the 3 exposed
>>> Type-C ports.
>>>
>>> HS only controller was not tested on any platform.
>>
>> have you tested suspend-resume?
>>
>> The flattened dwc driver seems to break it for me on Latitude 7455, upon trying to resume the screen never comes back up and the system just reboots from zero in a couple seconds instead.
>>
>> I've looked at the code and I couldn't find the cause so far, but it is fine with the legacy driver and not fine with this one :(
>>
> 
> Hi Val,
> 
>  Thanks for reporting this. I did test runtime suspend resume on all 3 typec ports as mentioned. But I didn't check system suspend case.
> 
>  I will try to reproduce the issue, fix it and then resend the patches.

I can repro on the CRD..

It's the USB3_0 host that causes the issue

Removing the clk_bulk_disable_unprepare() call in dwc3_qcom_suspend()
helps..

Konrad

