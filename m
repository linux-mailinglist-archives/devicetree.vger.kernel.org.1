Return-Path: <devicetree+bounces-222107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB75BBA5EE4
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 089423A4ECF
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:25:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CDAD2E0419;
	Sat, 27 Sep 2025 12:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kSajEEVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A45D146A66
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758975916; cv=none; b=ERxxQCzVGyerSbIwEvCZPS76FDKc/V/KjSU7bcZyYCnlxNs9GrrxkHPUQrxs4Bm1A43DAPrJ4551XRO/aqh3h/LNhJ2tQUmcnvL3j+9mSJJyPpjQNSj3LghcnxsoNRRfLqSp7ZLv5KQgsLhRlZGoDSApK+y2stiZqaIPKYJR1i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758975916; c=relaxed/simple;
	bh=GgCOt/z+phdZqBEtBgn6q744iM7VkOAtKu1iZAn+g/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qtf6f8FK6UsoC1qk0GssMrKemZBTpQETH2DIue+L+BtWLrIZQ93/drZ8XoWV6GKF3MkpPlca23W5PsTzpEo8+gyD5yOE2ZvCYVZvJCDaLTPpCQbUBk2rGlpHNH0zYFSTDg0syg1f3lpEG1i1M1fAduhYrNUzSMdIIO0jvhbjhmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kSajEEVS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R2Y0hx013910
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ngvpYTZxgjNvrCH3mH889EMTA04qWVYhTRe1uL7h7Fg=; b=kSajEEVS6+85WS4h
	TgXaRyzPWNyDNBm/OVsIPayLCwtxjxdjg0bozbhrwTHmOcpUA9/1mjDbNgZsYq7G
	lP4uZgd1zD8esLJxd/OX8Omnv1kjf3sjo8oHskemLxrS4XHL3+U0gdGB9ZMy/Gl0
	t2vPl9FdBWheksVu8StP6FW/jAZWbPS8ocHBhY6xsGO4DjcyxjGTCZhXz649eF8w
	YejWZos4SZw1rrxT1Bj/XzGRihZUHpMeBmMSGVXFDywa8aT4R8ftfwY4szrKJNE0
	ltwoqOjj4y3RgUFA881r430FSN3amuSaDDQHvwXG/N33v2B4YYB8x67AjpHUEDst
	Ij6NZg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e78frtcy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:25:12 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85d43cd080eso79453085a.3
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 05:25:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758975912; x=1759580712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ngvpYTZxgjNvrCH3mH889EMTA04qWVYhTRe1uL7h7Fg=;
        b=q4Ty5ML5ixOA+9Eg7NQg2sFKaULvHrZ5hz9uYa+5vZnQyWDcN37JKWpp2uy9BLw74g
         mcjRDUqb065S4idzzoT06oHv7y3USMVQIONkrWzf46RVCKVSC2jJfk2VrCQzOnl7o3w7
         jVljmjbHEX28h7qDhC3yIOvhEyJ5RBQiofR42Vxc7Z+TTEEe1KeLCPGN7Izla4d0mVPu
         dxU5XyYzcaoaY701ZUDQIQiN+2GXsgXjyme4SqpKQqs5kQfcj4DBu6llC4lD//HE+s0i
         Z0952ohoEw6yii6picQBrR3nq7ESYgwQqbD4hEub1VXJYpDfUg17aJTKS3WOw6SmLtWh
         6DTg==
X-Forwarded-Encrypted: i=1; AJvYcCWeYVxVWQL+T//p2D9jjuXqrNOPkCov+88jfLfpVv8yxdcmt+QraTLRICgCJHpnimor35TYrLi1Kr0c@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvoa+zOxjRGLE03ciBZazQvkD2vlbaix3I21XxD6vAPvYOGPly
	Q9BYcK1jsmef3TH6RorxTkE5e1O/ArhwtXnwjPEW8UZ/6T0qL2KC+abtDjNFsuRFKEfD/z7bLKF
	/eoOkpf7VTdwS+5bohdenR9WmKmJCBYk71vhEsWem4VTfOPR8gdBirTNx/K5i8pXd
X-Gm-Gg: ASbGncseHr1D+j5LRQ052IfUXWhFu5Co2qL7Ju5sKajCsJz4ydlxnoFeWXnb9GqDlv/
	B0iVB0fRkZhNLyp4rx/eBhs1ETRA/TJQsxUzer4V/gKXdjaR8L0P+Z+wzJTuvKM0ruo7nkWgq63
	YRUKjrqeK/ZCX4qoXba3mEqUyJ0Nsiz7QMEBbnZdM+xfdyHlJdEAnEv5GO1zvSrsMOKx49WW52Q
	r3vl1ckAAjLq/f+k8lSzrJPmxC18oakSFDkgDaiPyGWeLJQDga7v29QL6uxI1x1pE+Hj//jQGta
	HITnny08qoRhnMaByBZ10hgQ8f1zrMP5GQkXkxPuQG5HHALLBeT/8o5HVWk6ZGo0BJoINmyZCn3
	fqMtgKsVqirfAHuve/sKloA==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr715856285a.5.1758975912059;
        Sat, 27 Sep 2025 05:25:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIP22zJJo6zMZVEkJ3Z6/iorJzYuzjG6ojwnny5sa7uzRSjIItkHNVvI/SfRPCKZhmvyJDLA==
X-Received: by 2002:a05:620a:568c:b0:85b:27dd:84cc with SMTP id af79cd13be357-85b27eccea2mr715854485a.5.1758975911503;
        Sat, 27 Sep 2025 05:25:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b353f86f974sm554921166b.40.2025.09.27.05.25.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 05:25:10 -0700 (PDT)
Message-ID: <13eeb653-390e-4f71-aa6c-d048bbf988ab@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 14:25:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: glymur: Describe display related
 nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org>
 <20250925-dts-qcom-glymur-crd-add-edp-v1-1-20233de3c1e2@linaro.org>
 <43jgqfcw2nnasdnskfdri5swddr6kunvvp6oxzqibnlvyc4jd2@4y6x7fy5shq2>
 <r7f4zzugs3io4ho7qdjudh2ebyphtsjdnchnj7hnt7msoiylfz@dhfgzjg3sh46>
 <mztchl7blmp5cdjiyg2btl65o2jrydpn4m3fc2liyxjci5vish@k33bvcyvz25j>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <mztchl7blmp5cdjiyg2btl65o2jrydpn4m3fc2liyxjci5vish@k33bvcyvz25j>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=DZAaa/tW c=1 sm=1 tr=0 ts=68d7d7a9 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=DRieHXADPiE3VOnx0JMA:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyMiBTYWx0ZWRfX/CbgQcfDmyZo
 UXvLhLWRVlDzHIiFvdpJZLAGq1LBrm1qKvfRMFZS+klwvKPz0IaJAgSBLy7yIvAwhPQ6IseA6st
 cShpWXT42RJuW6lX7KrcwUUGGwC8+givMjszaFLIMFPxukwHcJhnzYGH5QDGr83aXmdTuU7vmEL
 1k2o3jpCQ4aVg6HgIRlsUa/yXIL/1jkQQ1LjbnTvnlzj6Dvl+M7kasR2BrqIzoPLfWc2X/LtSge
 m+OZhyUJp0zmGIsRLXcaMvBJTIdFIUalSQcaDl9N6wBtlIvpgaj2H77q5SaoAKk+YIcC0mh1kSz
 8T9U01c4j3BU+Aj3Criwn6FlUrorTrUnJFLVrXwraZbxS3YQlBKZ+KBmdyJxE7Md1ia0tRCV9EH
 EwKLI/lho/eJoJ6ZDSzrWjEolIdJaQ==
X-Proofpoint-GUID: amffEpEdMn1ZNLapCSi3gL7g8THkGMcb
X-Proofpoint-ORIG-GUID: amffEpEdMn1ZNLapCSi3gL7g8THkGMcb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270022

On 9/27/25 12:33 AM, Dmitry Baryshkov wrote:
> On Fri, Sep 26, 2025 at 09:50:22AM +0300, Abel Vesa wrote:
>> On 25-09-25 20:11:11, Dmitry Baryshkov wrote:
>>> On Thu, Sep 25, 2025 at 06:02:48PM +0300, Abel Vesa wrote:
>>>> The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
>>>> controllers. Describe them along with display controller and the eDP
>>>> PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
>>>> clock controller and link up the PHYs and DP endpoints in the graph.
>>>>
>>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>>> ---
>>>>  arch/arm64/boot/dts/qcom/glymur.dtsi | 492 ++++++++++++++++++++++++++++++++++-
>>>>  1 file changed, 484 insertions(+), 8 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>>> index a131cd6c3d9e7f14ed1c4aef4b68e1860cc3bca5..41d89998b1fe14a24cd528e73afc37cf2a840bab 100644
>>>> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
>>
>> [...]
>>
>>>> +			mdss_dp0: displayport-controller@af54000 {
>>>> +				compatible = "qcom,glymur-dp";
>>>> +				reg = <0x0 0xaf54000 0x0 0x104>,
>>>> +				      <0x0 0xaf54200 0x0 0xc0>,
>>>> +				      <0x0 0xaf55000 0x0 0x770>,
>>>> +				      <0x0 0xaf56000 0x0 0x9c>,
>>>> +				      <0x0 0xaf57000 0x0 0x9c>;
>>>> +
>>>> +				interrupts-extended = <&mdss 12>;
>>>> +
>>>> +				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>>>> +					 <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
>>>> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
>>>> +					 <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
>>>> +					 <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
>>>
>>> No pixel1 clock?
>>
>> Will add it in next version. Everywhere.
> 
> Except DP3, if I'm not mistaken.

$ rg PIXEL1 drivers/clk/qcom/dispcc-glymur.c

1841:   [DISP_CC_MDSS_DPTX0_PIXEL1_CLK] = &disp_cc_mdss_dptx0_pixel1_clk.clkr,
1842:   [DISP_CC_MDSS_DPTX0_PIXEL1_CLK_SRC] = &disp_cc_mdss_dptx0_pixel1_clk_src.clkr,
1855:   [DISP_CC_MDSS_DPTX1_PIXEL1_CLK] = &disp_cc_mdss_dptx1_pixel1_clk.clkr,
1856:   [DISP_CC_MDSS_DPTX1_PIXEL1_CLK_SRC] = &disp_cc_mdss_dptx1_pixel1_clk_src.clkr,
1869:   [DISP_CC_MDSS_DPTX2_PIXEL1_CLK] = &disp_cc_mdss_dptx2_pixel1_clk.clkr,
1870:   [DISP_CC_MDSS_DPTX2_PIXEL1_CLK_SRC] = &disp_cc_mdss_dptx2_pixel1_clk_src.clkr,

looks like it

Konrad

