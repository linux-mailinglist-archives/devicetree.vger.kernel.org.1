Return-Path: <devicetree+bounces-245300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C70EFCAEE4D
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 05:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30573302037E
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 04:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C831D26E6FE;
	Tue,  9 Dec 2025 04:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bTMvkw99";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q9z9nvXS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5395223AE9A
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 04:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765254998; cv=none; b=Kfu0Ej3e/4488AbR/kbrgI3IchhTot66RmZ01ff1yMclIEVKTXwj0ae8tFQMQGbnQOmvuR2dZKIkrlTt1VNehKbeyT/eExRJytVISNhgIVaRBlIJeJ95uyrqYm1cKsaC3h+9n7IhChTTawidIDlcCYn4oGCdNbFv9yTkpDyVGVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765254998; c=relaxed/simple;
	bh=GThSbvjbToT2JrFsO0luYZiceKv+rcGmeMOARrySPFo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UHSSpa+2Xvc/Oy8AJ28uKEHgUVvIQUxhLeA7AH2AclNRuru8IPIiIJpdPuIVfF8eXqkiZP5fduZxXm7G5Z4BJgv1CgKDnDh0MeYLT9BrHKF2cVkbDwK1dZXGqna5qY818tNTDCFLl8AMLwsz5B2CwYLDOS0LkIa/u1g8Ku3VZ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bTMvkw99; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q9z9nvXS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NXN6n1870462
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 04:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=; b=bTMvkw99QUkbbfTv
	+xpK3imneg7y1i0Pg9HVamNOgKumnVkw5+xh/FmiLR/n2GLy76JOafau6dff648V
	dGGN5iaIcYHOCv+7Okj6CnNQcFsxu8XOt8hNPDKTXyn6Lwjk5VQKQejKe5DUPJtb
	kU3Ohz2cZjK4vaT2DITRN3V1yArsD001CzdzshpA/p2NpfpXHa+NRPVdGGGLMuUe
	wMFRisYnwWqd13oS4z+dt50PHmXw/XyDtiqIhY5coTVqkEb1fI6SRiM9ojh4gp3M
	ZjqqCTyM+JTj18thl9FRm5M+YLOa6w6Ftoxuf4DSALV6+46X5BiyrRBaPiFaL+Am
	mXNt2A==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax4jnh9u3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 04:36:36 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b9ceccbd7e8so10344237a12.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 20:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765254996; x=1765859796; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=;
        b=Q9z9nvXS9R9zNMUAmih7ZhpFwFuXEl5YzvDJuIkvqH/3113EWARmjEff2rkGNyDJgc
         HImyTOrts6JmLc/N421ItvMq93858W1650TK5ai7FM2+yeExEi1aPfuODrn0ESgcOy5J
         TeZqdTeVUxegVxL3BgzEZGwKozzP5K4mJL98jrna6lCnEgjs446NFFCSa4c3a2EC1a4D
         9L0UIT124AU4V2JM3DWKI7B1IZfG2rDrPFRrTJV14mtsgkUtUeepjIA9P2OG0doXvW3l
         w3Ihxdnms22g4+Cq0/JrPLeLtSm0MpT4oAaaqe8mLIp4dNMybja6rAHEieCLqvU1EGG8
         3x9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765254996; x=1765859796;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J4c0Tq/BmToaocMx8xkBZuMcN9gE+0JfPotxMOnM9Po=;
        b=WLD1Eno0SRwMDxpuJIpZ9iRsu+dibDLAOfavnVXruZs8Vre2l2lZ07xkTGDgDdCTYf
         JFpvUJpDVN64T0Z2xeMHxn7UUlNF1uWDbo9u+ExJBsHFx2yuWjTmMAvOQE37iOydpL6q
         jqtUU0vnTdbAcOSX6TbHpPFxkPyY7LOYlSCH95Hzcu5+t3ViMMrKMTPifVsb0BRCswUN
         IDrj+MUh0mrhsWSWViJEXx3Uv8hKJsQTsLv32cb5Uka8oJXvFV19sRIBrHxcHpyOqD02
         tGsf3myCdRyCfWS9dEB9+3XQMDP/0HmJgsaHo+ilaYDMxKh4X02+RDCQCKF7WffAWqgv
         9guA==
X-Forwarded-Encrypted: i=1; AJvYcCUPuOLOeLtTa0DsDG8FsP7tw177eJhelFJFXb05GU4S//hhNKfANgh5VbE+YdpC32Nb7b6E84DpdzEV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3McFR64dB+5DbAKgPes61r15PeCsPuuC1H+WXYXz3RNhXu2xH
	4feqYthrtHJpUfAh9WOYkZbOwec90SDZLjKmYSmZCmZcocsF2bUDOfR5K11LOC07gKCDENNVXXn
	CXs9TF62oTSJuQ3PP3ppSe0PotrMc1TH4NyNx8l/+8piDHB6oPdUZVwloVZUtTPsQ
X-Gm-Gg: ASbGncuwdRbYxRbEFfDQQ+k5gLyCfeNECU0c5j7eRxYTdkViYqdugvk66voTDN5jvS/
	ILmvDs4ehuw8qE+EMf1j/ynP+nsMa3kMDtql1ukBeYWqJsfFP6RlWio+pjTQLsXr+wTg5oKmxGf
	FSW6oKJmxsim2CRo8Ghed5/8HkcIXiZPE378fFIERCGzBh11imYNJztj6Tp6Q+8wMj38N56pGc1
	iNZRq/ZJqKbQ7JPgJx6ZpPy7SFmJX0GjcHJkOiDow8gKUVNe2e1MoY6BUaSDVs/Z0UmnwWWbaJE
	WRUFhzLtaF0Go4pNL3bUWlMR0S5gpbMBX8rUjVP7RTKdk3+DMTuCiqinJTr1nplpRXN+uuofvmq
	hHsOHbHiZVhgTUQMxHhUnbF4nKxSkh+MUdUSj2IVRFOlOgA==
X-Received: by 2002:a05:7301:fae:b0:2a4:3593:9698 with SMTP id 5a478bee46e88-2abc71f7ec6mr6465292eec.21.1765254995501;
        Mon, 08 Dec 2025 20:36:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGgu4aPb0+lj4MxhGBo4aAChAGZ01Kns/S/0CeavX4HExSHWEmqMwaWLLzXzoMHs39iBx8u4g==
X-Received: by 2002:a05:7301:fae:b0:2a4:3593:9698 with SMTP id 5a478bee46e88-2abc71f7ec6mr6465273eec.21.1765254994907;
        Mon, 08 Dec 2025 20:36:34 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2aba87aa5fcsm40914062eec.3.2025.12.08.20.36.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 20:36:34 -0800 (PST)
Message-ID: <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 10:06:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
 <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dZSNHHXe c=1 sm=1 tr=0 ts=6937a754 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=MsxH4LtXGSFWTCPOqMgA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: at4vftqDJykUAsUvyQM12JocnUjLWrCa
X-Proofpoint-GUID: at4vftqDJykUAsUvyQM12JocnUjLWrCa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDAzMiBTYWx0ZWRfXxuzK4vJCs2Xw
 Ers4hhTFSsKDpDzx/fownBuwYIlZNibt3nOjS8ft45EFnKrKOcWv8WAhaFwDl+SJB1hTrybECYI
 2aFzCgIqsuajfh+Sd73yzrtmv7YAOnIaBiAtmGb85TMThkjG+KebE4C/96Vs9KPF3+SsOxZ+zuE
 XddDmgBMuAhvzE/43r5NBXGRGQwS7HikOTc5gnxsZjEwgQd1otOfpiZMfNPkBYnQvHmffx03Bi4
 nrKZEifXi7R7Tl8ak0GB66c1y3dHaddUbERqJZ6iiGnB8P1Ndi+lZemgx/OtYri96FPjczEJtv+
 WK5ZrHx1OKNt0z8BQY/vxPKZp/C/9Dxx6gyIeDESq2I2LhS7nlK/9grgZXw6msc90hCM0LMupDj
 N1LX7U+swI2sfO3yIDONvSpss/lxMw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-08_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090032



On 12/6/2025 4:32 PM, Krzysztof Kozlowski wrote:
> On Fri, Dec 05, 2025 at 10:55:36PM +0200, Dmitry Baryshkov wrote:
>> On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
>>> Add squelch detect parameter update for synopsys eusb2 repeater.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>>   .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
>>>   1 file changed, 8 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> index 5bf0d6c9c025..f2afcf0e986a 100644
>>> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
>>> @@ -59,6 +59,14 @@ properties:
>>>       minimum: 0
>>>       maximum: 7
>>>   
>>> +  qcom,squelch-detector-bp:
>>
>> -uV? -mV?
> 
> If thi sis adjustment in ratio, then bp is correct. Some sort of
> explanation in commit msg would be nice, but I don't want to stall the
> patchset for that.
> 
> Assuming this is indeed ratio without actual SI units:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 

Thanks for the RB Krzysztof,

  Can I update the following as commit text and retain your RB when 
sending v3:

"Add squelch detect parameter update for synopsys eusb2 repeater. The
values (indicated in basis-points) depict a percentage change with
respect to the nominal value."


Regards,
Krishna,

