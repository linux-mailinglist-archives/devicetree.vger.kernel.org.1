Return-Path: <devicetree+bounces-223815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BFEBBDCD1
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:54:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C58F3A4D56
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5437C247DE1;
	Mon,  6 Oct 2025 10:54:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="phSh8dnP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B868E221FD0
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759748069; cv=none; b=mjgsLKSQkxIeG3dWw/WZfpD2n44CLne5YXFsbma8YpSFQqzBUDZ2zB8vQx4xeeKuCqhStvHtXEJX+mNb+M3X084pgkrbn8f2T5V42+yDa1O+4sA6EBOU7oWFbilIeniiS40qSxZlovptuAqXJ4H4G2IrWhj/gdf3qLGS+93hDlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759748069; c=relaxed/simple;
	bh=vmYzjd+gD67/FpGqLWXbsjWQ3oV/LtLheIepsuy2frk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g+2yq3ZVKvTFzwBd3Y7DUbBmivt8by6e14KRG2rsezzMWxTbSKM7ZWurS/aN2uI+30sR7PldQJ6iVYkYgwKTRmzUfnCJw30DASXn5hZ5uPMybwR98GXFF4JMrGyWuQH5fQcnrW+Q0u3xSlhuSYaisCep20knMqcoTEZww4xBMrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=phSh8dnP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595KUT9c006173
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:54:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VrVUbIjlJ3CooIYoglFiSW0iKQJSrhBTHl5HZw8oVPc=; b=phSh8dnPXr+6MFoy
	SEa88ezC5puLTmkRCMug4bwHdgrVtTVynV/9+kKEO9Hw1tdFmK7drUX0RLVxFvII
	PIPguTgvUB6YxnSGMOBybd2Ax8Jjj+YTYP0ujTXpoelU2S39wD4NyHQM1Km2snZQ
	eJ6paMY57Bj2Ab9uTkG91DXkPoPIpp3h8kmU7TSxpCLSbsh8TE5BP4o32eNFjpVa
	wMkkyZ/vSOZfYdjVEPAZOzCDr2RTb5W4xSuXD0aN8E9mtv4mrTVw5ZlnnWairn6p
	PMAmPdydUQKYmNb8CiECmwP1R7sismusOY8Vcq8yLrtBPD/j7/yLCweoXPQ7agx1
	7iNW3A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6uq3g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:54:26 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-879e3de728aso90606085a.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:54:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759748066; x=1760352866;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VrVUbIjlJ3CooIYoglFiSW0iKQJSrhBTHl5HZw8oVPc=;
        b=EVuon4VqB0O0dCg3/bsvvviD9B6X9Ypsi/bX5z3cFkYfhobmmGIuZjBWJIK0qC/Alc
         WQBbpvOhlK65YpqIruTQ4Eo2fWxIIdylsmwdfVZekBmfbfAi9q747zy+l2qP5P7Khd7S
         qzvhAxk5FdM7W9/8ZqS7DJin5Q7jrKjQVJSa0mCJiaSr+LoiC9MF20h/Sxe7d1JR5F9g
         9/JP+NSxlkYY7UNMFssF5NsgNYc3/ux/OhhoTsojls1N47ZWzH8jyc3qaNb4RbK8knNo
         UnQLZpIrh9Wze0qe6Vcp7temRxDcGZHpW+5IvtjFnyNwB/q6QWDGZmzzIkuIzZsmlPxx
         0VYQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1MeVN8Dj0z5a5eRL2CsVb1cJzt8s2gYCJFKNZFpHTkNXDY0ub8FooYGcFzFwAH9FDKpt20T5CpAtP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/xGPWnJ/cRFQVwuxyPsw9tW1LV8ebCFaPFrsyySPm36i2N5QS
	Px3Syu7uTZEzaghu+9Ldkr/W8IJgS7enPzQtXO1uhe99tQz/MFSRCBoXYwrQW9/zXl+K4feS2fB
	DOdQ/zbJRuHz6Tw5NxNB4TSSYfHQrTnt1NVE3z18zLmPS8Jvp4xiHWzynrnF7/cyq
X-Gm-Gg: ASbGncv583f9v84Q8HnOy7dGXmWzA/uyk41ks8zMI4J0tQFFqYkPHOv7ckfo0f5cUNd
	AbQMQYBu0aaZg0uyriP5ZEVKPIv9fO8ezdmNVAf+sGA7/7t/TUtfTmx8OywpWQGk73LECDoj2xt
	4M21qHlgw/XUg9Tt5XV9iKUMY0zbsxaDnXzBlEbicsdu+a2pHZ67d1IOw9nYp1WvhJWQsdtMrOr
	osRYHa3TMjUrRskovH5dC8txJUdBPUGXNGE9FrVCbDcf3kZcol23npbPH8DW+DGJWm+Yf4iycsB
	uRB7H3vX4GkAZ1CQ7/lin9OOM2xqsTugnPIqqs3HuyROXhyMPwKaIjdcCl8+Ws1rfZAMVEMwV9x
	ZVQsHHDFgTQ61lbtVH4Eu/m/HJlE=
X-Received: by 2002:a05:620a:7011:b0:856:9348:fd74 with SMTP id af79cd13be357-87a2e796bc6mr979240485a.0.1759748065776;
        Mon, 06 Oct 2025 03:54:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEeDw//D1IK4m3cWB7mV/guegNe2+DSX+asskT8jKYrvQ7jiqqsqAG/hluBT0+bCJ4tzcKZRg==
X-Received: by 2002:a05:620a:7011:b0:856:9348:fd74 with SMTP id af79cd13be357-87a2e796bc6mr979238085a.0.1759748065120;
        Mon, 06 Oct 2025 03:54:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970a786sm1151338866b.46.2025.10.06.03.54.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 03:54:24 -0700 (PDT)
Message-ID: <c4e12751-678b-4941-9e35-c7d904d1b128@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 12:54:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] phy: qcom: qmp-combo: get the USB3 & DisplayPort
 lanes mapping from DT
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul
 <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Xilin Wu <sophon@radxa.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250930-topic-x1e80100-hdmi-v4-0-86a14e8a34ac@linaro.org>
 <20250930-topic-x1e80100-hdmi-v4-2-86a14e8a34ac@linaro.org>
 <74446713-15a1-4706-b3c7-801724467575@oss.qualcomm.com>
 <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <v4oxbjc4jho5uuz2k2ou4rvycdwifu2wuvbhldgfrm7ord4yqu@7ktz3a4233ff>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX6s9F8KkopJao
 K+Di6olk/llLYMvH0FWkv0EFOODmSKYwicunlUhAF2qv9dEs30Vr9BYaEgqaYj1IRX+at4UWM0x
 fNV2QiAuhYKNQ7FIg1MIUg/wpfGfTDaat1sWsOQDOYPFSkol06gXdYffHecycv0IZxzl9Ritg8j
 KdYD1AI8P97TYNfTF4/D2apQtPOj9Jd8AxwLnMTR4bu5tCJGvZICM/7InPieBVcTe5jc6DvTth8
 MwWztklU/G7qUIL7FgLc3ePopK1PbuQRpTbSEGeQqnlibWkv656ur0pT0t17PyYtIPr9MbusdAU
 07me0LmmxyfnnVfIwJ1692TOvNCslQ30AbI8vCdPziTzx0JMhhPNSkR3heQ0zNe/yH5KvxtuwVi
 d5aYPR/XDcSkKrkHqursU6fjJ00sAw==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e39fe2 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=vM37AREu1tepbhpWv1IA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: FF58F9sE6tjfSUJKNvXAPG_vq0gHbHEj
X-Proofpoint-ORIG-GUID: FF58F9sE6tjfSUJKNvXAPG_vq0gHbHEj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/6/25 12:35 PM, Dmitry Baryshkov wrote:
> On Mon, Oct 06, 2025 at 12:08:22PM +0200, Konrad Dybcio wrote:
>> On 9/30/25 9:39 AM, Neil Armstrong wrote:
>>> The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
>>> of a combo glue to route either lanes to the 4 shared physical lanes.
>>>
>>> The routing of the lanes can be:
>>> - 2 DP + 2 USB3
>>> - 4 DP
>>> - 2 USB3
>>>
>>> Get the lanes mapping from DT and stop registering the USB-C
>>> muxes in favor of a static mode and orientation detemined
>>> by the lanes mapping.
>>>
>>> This allows supporting boards with direct connection of USB3 and
>>> DisplayPort lanes to the QMP Combo PHY lanes, not using the
>>> USB-C Altmode feature.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---

[...]

>>
>> [...]
>>
>>> +struct qmp_combo_lane_mapping {
>>> +	unsigned int lanes_count;
>>
>> "num_lanes"?
>>
>>> +	enum typec_orientation orientation;
>>> +	u32 lanes[4];
>>> +};
>>> +
>>> +static const struct qmp_combo_lane_mapping usb3_data_lanes[] = {
>>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 1, 0 }},
>>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 2, 3 }},
>>> +};
>>> +
>>> +static const struct qmp_combo_lane_mapping dp_data_lanes[] = {
>>> +	{ 1, TYPEC_ORIENTATION_NORMAL, { 0 }},
>>> +	{ 1, TYPEC_ORIENTATION_REVERSE, { 3 }},
>>
>> This is not corroborated by your bindings change ^
>>
>> I'm also frankly not sure whether it's pin 2 or 3 that 1-lane-DP
>> would be TXd on
> 
> If we follow the standard, it should be 3 (RX2, TX2, TX1, RX1)

OK, then 3 it is

> 
>>
>>> +	{ 2, TYPEC_ORIENTATION_NORMAL, { 3, 2 }},
>>> +	{ 2, TYPEC_ORIENTATION_REVERSE, { 0, 1 }},
>>> +	{ 4, TYPEC_ORIENTATION_NORMAL, { 3, 2, 1, 0 }},
>>> +	{ 4, TYPEC_ORIENTATION_REVERSE, { 0, 1, 2, 3 }},
>>
>> Would it be too cheesy to check orientation based like:
> 
> That won't catch weird errors like {0, 2, 1, 3}.

Sure, but you can then drop the orientation field from the struct

> 
>>
>> static bool qmpphy_mapping_orient_flipped(u32 *data_lanes)
>> {
>> 	return data_lanes[0] == 0;
>> }

and the compiler will hopefully nicely inline this into a
compare-and-branch-on-0

Konrad

