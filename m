Return-Path: <devicetree+bounces-245107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CBECAC470
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1336A3052B2E
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 762012517AA;
	Mon,  8 Dec 2025 07:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pwASOPEI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QZS7ncGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F9221770A
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765177719; cv=none; b=kVmTOBYU+j17R4DU9g/Yh5oZFua5LbV3ohujCrCjxILoYvl8dy3dBAIsyt0jWHnwp3JXKMX+MZXOCpQp/KqIzt3oWyZ4dWOcp+CWymPyyQeyBBGPxfdsk4y9TAdrdMBs5L8KMtabjdhNwtKNLdeE4lvCKepYrDTxYZFZk/E+Pm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765177719; c=relaxed/simple;
	bh=5U2nNP5dftyA1Sa5T+0/5H6exPE6lgE+igrrarCHk5s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qeYCg52ClOVg68muPF+T4Kk68IEbE5ULPIWz1mD+ZJbAVavF+2n+OzLCIrePrHuEAhyZaILFmcQKDJSAdOvVik0DF9vT7FH5Zhr3NwFpv7qARHQfOP6aTGfWwPtEwMOF0cWpPEpPApWebupfmuxoJb4ATCXFPPdg4nl/tnHzyCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pwASOPEI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QZS7ncGJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B7LW8Jd3318928
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 07:08:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NrCzWgsdVcK5TFuDMmWYSL7yv1kb6wtdUuJ1kXKqm/g=; b=pwASOPEIrrF3p0aX
	5ITlcVDt7cXftYiKmAp2paITDAGHdirBQAsnPbpVBbY/AEPqJv9+lZQmndBQ2ku2
	QwpeJ8JND29WMnkDwz5dx+FZKWBjzNYXhC1MPexsdM6IVnFTN+zdz5r5KQcyFZ27
	ysJZsbNYwR4rPzvYY35Tu4puJlCdoghJGXoXQVsG28Z9ZRmxtA17yxgCqDXmSfHW
	0I1sEL5KG8/ihYEBMKeV0CD0UtHv457CuPZJV8agkDbFavDARVT47WW5XL2MbIHe
	avSUFDpr5CwsId2sEYnxqxEc0Lzc5v5Gc3VjE7vlk3EAS9zSdh1lS5dBHgyFar4U
	Ks3DOw==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avcjvbyb6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:08:35 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7b9c91b814cso11114725b3a.2
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765177715; x=1765782515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NrCzWgsdVcK5TFuDMmWYSL7yv1kb6wtdUuJ1kXKqm/g=;
        b=QZS7ncGJZome0SkpE3OT6RaK2BVQ5LT8DRVVfuZ+09Z01SmYO9//TRm46PnrkwLfJv
         g5bt9j6BoB14M5goOdgBQ/4GqXZvYeJAj4k8sc5bFVXCtwMTKRR7Y17U4CjtsH/pH7VB
         peq0Z0DwaL1ZzZUFCzPjV22iWPSHzakmeM33LTiW//di6GRqcXPSuWS5q7kayKevo27Z
         EwnimOSt48TTAbalUwhk9S5MJFKfQQJ1uRO7b/nprtZ13h4SS3cz41Cb060Nn2E/iFYH
         X1lgM/VBaFFGOSP0aEs/PbxL1VFZBwtqry8sHT6e61gFV+y+ME/04YfZicD6HGaJAqZ7
         IBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765177715; x=1765782515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NrCzWgsdVcK5TFuDMmWYSL7yv1kb6wtdUuJ1kXKqm/g=;
        b=Dun96Str92qXn5jAIYXZZYmlMQu4Joorxpxw3qrzIX6seAfT6LG+mFI8BP6h7cS9q0
         9Iv6LWDqeDr4hEL6n42F9bDmh1t1/cupKILhBINdhgZzOkZeOqef162MVIOhTjn+C3Kv
         A0GsnSFfNdGeDxVXkE5CwdOVtbP/uvrbQvPtqNlRBue/xgy6O42wCscHwLU8gCvceIgs
         WSp783t29MKDKogzonoGD61nuacbo4+IWWsDLh77matL9HLCwfiKNj0xpXbhOH/41Mgg
         E9bnUJ26tiU10bLBU8cnDVhjydz1sc+ldBO/3OBJw+xlrjhw/9SFyGa/WSHGUorVZsYM
         +eQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVXKuW45+mb8VeTC0BxXaBWAjupK7jU8UKZAd/jrZcAiBD4Rhx0aHV6qCjeeeq6dq39QH3xHypdfXBs@vger.kernel.org
X-Gm-Message-State: AOJu0Yyt4fVrpiAkXGUM3WYZqHEb7ftyN6ULc7R2qlu6NPz29o6pO3kM
	ZUMzGx9DaphbCLUDsKlKlQyH0M3Q5dilErCjtG+lSMJp2ChFTuCRnkvLLhb5c6BJ9lJN+kdShsn
	YM3XL4ZisbSvEmE1upBq87XveZfA9HH5lZNe+zg9Ozokd2wdcoEJgsJyIzFBKVx9J
X-Gm-Gg: ASbGncuhAvG7glT/gydTQypoL7UwBODS0To4yiegv6actqmUSStnUrLxOgvi2SBAAYq
	DJ3Zx4XXKtjyeucEZ+OtAKsZNIkZDGMb0gp99QRp9BN0ZN1Wgnv4K5e0WxB1L99TqZ6QG5rSSbm
	aKhfbbGUWb9PM4Xn3EPTR3Rz0f71BgHuwVvqGTIU7N3HwuavxkwHadrpMxW4qeW90WKUcgX2eHP
	XRrLb+VHy3i9SS4+sw1XSgEKN9I5BtWqMV2Zt2vsw7Z0JVSgoGHsI+AkOb0Jjr28ovDOVioI8eu
	LvdYKWgR9/W6MK5bwYNRvvzTPN7hjt+p5qvGA53itiUmcARxzsctlx6Cjzy8MuP0xMsKlDXb+6x
	XhDMpOR98kfMx2pmv67WvSuIXyMXoqMNjr3v8IfmC
X-Received: by 2002:a05:6a00:1a90:b0:7ad:386e:3b6d with SMTP id d2e1a72fcca58-7e8c3628762mr5743427b3a.21.1765177714720;
        Sun, 07 Dec 2025 23:08:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGWRBD4V8JHyA/GcqxpCyzDbxDkWZj0rh1476foDQID2Nz2CNPRb5T/1mOwu9CQt2+VHqTTw==
X-Received: by 2002:a05:6a00:1a90:b0:7ad:386e:3b6d with SMTP id d2e1a72fcca58-7e8c3628762mr5743404b3a.21.1765177714267;
        Sun, 07 Dec 2025 23:08:34 -0800 (PST)
Received: from [10.204.86.50] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2adc5c17esm11991962b3a.34.2025.12.07.23.08.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 23:08:33 -0800 (PST)
Message-ID: <2c7d183d-1e1d-4789-b799-5b0f02c4921c@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 12:38:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] misc: fastrpc: Rename phys to dma_addr for clarity
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-3-kumari.pallavi@oss.qualcomm.com>
 <xefaz7ljox5drnf7gl4aymwp3cygc4fhxb3mksarqpjxm3ozrh@co4e4okm6hzf>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <xefaz7ljox5drnf7gl4aymwp3cygc4fhxb3mksarqpjxm3ozrh@co4e4okm6hzf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Dccaa/tW c=1 sm=1 tr=0 ts=69367973 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=TGxxbsFBFhonqYEHZgkA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDA1OSBTYWx0ZWRfX3l1KT76BScW+
 yS7NJjwtuhBNuxFot1eaqegsB0MBan2y0DM62Qf8FsvAv90V8VPehbYmGihVKzxt3rL7rUDifkn
 TlGyF7s23HvMubnusykSK5RXS7fTeU9sE6tp0Scg63RuBmJFgPIIagReLai/nSkwGXk3ojeKw+v
 CCU7tFuZo7TIXMjumc4BZzuJBV8cHj44KlUhibz+dJ8aiYn9dYOfgphx07KcSa42GshdhYaYTmJ
 upFC29eEHOrVnZFgsDSN/kA1W/+2NJWRLV4LV+5Axr0RSXYDOoS1ijOUugzsPFCRHWCD5KWBj+R
 5mxQ/WTA7uikcFITlntejAL1lEl7Dr1pdW+onq4pC5PcyQu3sMkJtgEDAZThqOcz93JG0mL9xru
 rqlkJipFyoM+Ma0kFWSvRnTf0wms2A==
X-Proofpoint-ORIG-GUID: qvpZHRX5o0vGD9F53mbk-WOVxSCrl4d7
X-Proofpoint-GUID: qvpZHRX5o0vGD9F53mbk-WOVxSCrl4d7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080059



On 12/6/2025 7:56 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 02, 2025 at 11:36:26AM +0530, Kumari Pallavi wrote:
>> Update all references of buf->phys and map->phys to buf->dma_addr and
>> map->dma_addr to accurately represent that these fields store DMA
>> addresses, not physical addresses. This change improves code clarity
>> and aligns with kernel conventions for dma_addr_t usage.
> 
> Please _start_ by describing the problem or the issue the patch is
> trying to solve.
> 

ACK

Thanks,
Pallavi

>>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> ---
>>   drivers/misc/fastrpc.c | 77 ++++++++++++++++++++++--------------------
>>   1 file changed, 41 insertions(+), 36 deletions(-)
>>
> 


