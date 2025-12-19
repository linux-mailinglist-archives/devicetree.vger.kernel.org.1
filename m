Return-Path: <devicetree+bounces-248222-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A446CCFFA0
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 14:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AC0730F9D5B
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 13:03:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A433C32693E;
	Fri, 19 Dec 2025 13:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FIvZ7eah";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gP4z6zGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8B043254A2
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766149334; cv=none; b=Nj0Qmg06bb5pCRFd8ibnSwvHYE81hZRFHubeVB7iz1nLkvva3IGXQxjPODjUrqNoS+GVEBQLdBp36bsg0lKEbpBZOlYqE7QBHZQ3RCdwuKuPajtcQwEgx+C+gSA9VSnLCmy+ivFHm+JA1JS6EmmDAVgFP2YmInarDce8a+VDkBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766149334; c=relaxed/simple;
	bh=6Em3i7MID45x6PraANojvAi4wM69Uv1R7k3lu4+xBgw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FEFI56l8maLhF1m+bTHyiXcTACbwdlGN3QKcctis8Nue3cfR7cFdOsfbdvNLa/j7i55shw5BKvFzuaFEvhDvk5SzPxjRYNUNSg5vMao1WtfEOG10caEADd7DLhJrXA1DeX/7/zd+Z6lIgoRFx6iGuOnEjqVzNp8ztHYsdNVz0HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FIvZ7eah; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gP4z6zGT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJBwYlw3700758
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SZXL63hhjyW+1jMgBiewMjiLdhPV4CzHI9+MzSuzuiY=; b=FIvZ7eah4EyNSe0M
	k0GSK5z2lLWta2ZF42Yp+1A42yc6PC2oSiM/4Z2q6NCOwcT2DjwPmht2wszW6NLd
	7QxVx25gTSBOFkZnTmJf0yiOKFXqV8cpHe2pJbx5ACWoBkkHItdpqwSG6E51h4qg
	O0cBE7VnIgDSMCMmuULcrqvBwtBHpqpxLfCscj3yI/6XGa26iIBIssgG+p6wbgTD
	mfoe1fTAjLusa1cZXFa9ZwwiW/Y2E3xbeMol6QTlaa/foqlypubAZKvS1Rq6OR5n
	Iv1mlMC1QfVWH+0e8JCDfR+CeTiO0Lhd9wHh490/MAFYOObSAg6U4P+0eF54s9Ok
	eZQ8Ig==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ejn73-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 13:02:08 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-93f4f5e8574so201829241.2
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 05:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766149328; x=1766754128; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SZXL63hhjyW+1jMgBiewMjiLdhPV4CzHI9+MzSuzuiY=;
        b=gP4z6zGTGRqPJuSddmUC5/r3ccuSWjS7XUZkRI5b9avQiGUEl+UJOiX5l5Esz0Sagc
         +0ZkQDq2Mealaj0mLTCztQ764ART4PQ8hMNKke6PSAzFX50eChZang6qSYdCNvIXzSVM
         /xufbTPmta06qpmLruL52hAJY1SLCjhPG/Jf2HzWPymNDpjlLaUpVXffhgVv2Rr9JUhx
         o23RYwqNRaq1LRBaPHy7i/+R/TYDsW3mx8DRoIvJppO7EYnIMLbHwGdXni+ejbyBWb5t
         xrjQSBpKwbSykIY8YOdscmBWvkaPTMXuypX6X+35ZLnPdT0nwX2rDoxmhxLbfVtVP/ke
         TXYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766149328; x=1766754128;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SZXL63hhjyW+1jMgBiewMjiLdhPV4CzHI9+MzSuzuiY=;
        b=o/q4T9I3Aitb/a8QIntb3h6OhruVZ/4csYQ/KqrzfCGrpqVpYvLBd4WSNu5zjc7Vwp
         PbPDAn3ehBN07mz00AeTbSeWmUBWjEeSK5ZugF2gA1xvrdXyf+9BafJgyk9oII8G/KoK
         izSaGtqf8p3SUVMPrsCMPj0gsGXylG+hDzrsGNY0xz/VRzz659LnVTv2xtAOLVQgaz/w
         OS37mrkaL7w4k2MI8Kc14AZ2UIkPJhpBbooE/rmdemojUrZgwn0PG9dSlVx3SnYVKGfu
         wQ1Uj41E4t7rqETglEu67Oe03pl9euH/Q+8CvDxde3DinlTP64WvIhzaGsLUr3L81jSD
         XeJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSK5UhsGwYPQ2Lk2vkT4dtzuxSqmx5XpjJfqh+FwTF5M35aLTSDuAuuQ53+0+CqPbIblmdiQp5yWcN@vger.kernel.org
X-Gm-Message-State: AOJu0YzBcXmYSrKMNhdZ1X5Pp/L1QdgqemHiu1ek9loMFIJnVevUxfu1
	6/gL+2S/z6sfpN7eUxRamEQZGneoDAAqrmdfsvhcgmFMzRLhC5wpbY/LnupDjBRotnNLGABdcWO
	3Fw9AhXKKXimD9SAv9bkhosOkoBtXfEVS78TfhZuYk+m1wpcmW8bzk3Gf0xg+kDpN
X-Gm-Gg: AY/fxX7p99HUUj4cyYz7Y/lsxWaaoT3Z+BS8HiujLr0bYDd6UHP8tXhywM9CcAcTAaF
	WqG7473fiQAkAzv5B1pt1F3a1P5b3MpK5RkXX4udjFEnT73PSdHBxn887eC/NzaiJ/FQa1IKn4D
	BQ4jBEJXUTUiBtMugA5cV30jlTiRYqOaKVee3IXg3ZUUmz7TD0kA+7TZEdl3dPlmF9fy66o9viX
	M8q3kR+1AA6kxzx62LJdr00R6/oCOQ4GcUjSdedOiFSMHZmI4NOPXhRDEWulEOBb1sCvzCFO93E
	hTgBmOXsiFW8cwXyctsFDS605di3pB8vssaSNIh6GN9yavcknuYCceey1PEF0GCBr5+d4p9h3vx
	mqbA4YrAu314QkW8JQwvJ3Ke9qs3M/upMCSzz11lsUeUE6FC9R/Lo/DBEKMLu2oQFSQ==
X-Received: by 2002:a05:6122:104c:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-5615bc2dae2mr435796e0c.0.1766149327870;
        Fri, 19 Dec 2025 05:02:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGXeDGSy1uF22rzogOY11+L7dou3cJ6USkw1y5Af2xvx2Z79MJW104nHs4Qxm7QUPKa2C4w3w==
X-Received: by 2002:a05:6122:104c:b0:559:9663:bfb1 with SMTP id 71dfb90a1353d-5615bc2dae2mr435755e0c.0.1766149327079;
        Fri, 19 Dec 2025 05:02:07 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9159a6d0sm2136497a12.28.2025.12.19.05.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 05:02:05 -0800 (PST)
Message-ID: <701a7b2f-848a-4cc0-8924-ec72155d93a7@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 14:02:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/11] dt-bindings: clock: qcom: document the Kaanapali
 GPU Clock Controller
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20251125-kaanapali-mmcc-v2-v2-0-fb44e78f300b@oss.qualcomm.com>
 <20251125-kaanapali-mmcc-v2-v2-7-fb44e78f300b@oss.qualcomm.com>
 <20251126-elated-stoic-scorpion-25b630@kuoka>
 <de44560d-4ed8-41fe-be7b-56412b933a8c@oss.qualcomm.com>
 <fbe39eac-7c92-4a08-bafb-31e5c51a0613@kernel.org>
 <503f445e-0d12-407d-bc77-f48ad335639b@oss.qualcomm.com>
 <e8bdb176-b6fb-4dd2-8b5b-9da8073fa915@kernel.org>
 <ca118faf-3451-4b83-9074-82bc5e1f731e@oss.qualcomm.com>
 <3e8128f4-3cba-4c13-a846-e5f1638a1e0f@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <3e8128f4-3cba-4c13-a846-e5f1638a1e0f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: AqyKBJxidpziD92qSiNplToavfXA_nQy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDEwNiBTYWx0ZWRfX7fNC/xs6dQ8K
 3kdgyFi59ucLRyj5Lg7wf8HGtuDiRMOdddh6DUdqAJuWtAto2aKf67VekMkkE5LxnMSzJzPQ9b+
 lx303+OtD9hwAU8H6L/b971bgwcr05l0GOensaMRgFFZi5wkK8HI1FUbTnLJdbK4iqr1v35gYFY
 lScwwCS9BQ+qZnzp4T+mRlWo1cUPjtAZxUGh4wC0O6WTVVd9kjlhPGaXz11A2lMP29DUoI7Gqrc
 DbsYtj73Wdx0QFYYwqn8u61lTvmxPR0l/Pr1OJHSa9hbzFdHNOB9GJE8U668jN2qp9JqKpa9XbQ
 Lt/6Z2B8l1+mfDj/BxVB8zMGZeMek4wGBV3bIzzIBLCjNWwQueIAxJyIquZX9EfX/W4ZPW1LGlK
 n4mirFUfhbCh1js3cv8uSrbHrusiHXXma0aRugj6Z1J1U33dChiqzkqnZFP9s9VWd8ziSi5A0c0
 ajt4wN55LEDTisj1kWQ==
X-Proofpoint-ORIG-GUID: AqyKBJxidpziD92qSiNplToavfXA_nQy
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=69454cd0 cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bZysObWQuULb7_ZgAGEA:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_04,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190106

On 12/17/25 2:54 PM, Krzysztof Kozlowski wrote:
> On 17/12/2025 14:21, Konrad Dybcio wrote:
>> On 12/17/25 11:09 AM, Krzysztof Kozlowski wrote:
>>> On 17/12/2025 10:32, Taniya Das wrote:
>>>>>>
>>>>>> We would like to leverage the existing common clock driver(GDSC) code to
>>>>>
>>>>> Fix the driver code if it cannot handle other cells. Your drivers do not
>>>>> matter for choices made in bindings.
>>>>>
>>>>
>>>> As it is still a clock controller from hardware design and in SW I will
>>>> be map the entire hardware region and this way this clock controller
>>>> will also be aligned to the existing clock controllers and keep the
>>>> #power-domain-cells = <1> as other CCs.
>>>
>>> I don't see how this resolves my comment.
>>
>> Spanning the entire 0x6000-long block will remove your worry about this
>> description only being 2-register-wide
> 
> But that was not the comment here. Taniya replied under comment about
> cells. We are not discussing here some other things...

Right, you omitted the part where I answered your comment from the
context, so I'll re-add it:

"""
This block provides more than one GDSC - although again, not all of them
need/should be accessed by Linux. I suppose just enumerating the "extra"
ones in bindings will be a good enough compromise?
"""

TLDR: cells=1 makes sense as per usual

Konrad

