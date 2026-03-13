Return-Path: <devicetree+bounces-274951-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PwUFR6+s2kCagAAu9opvQ
	(envelope-from <devicetree+bounces-274951-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:34:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A754527ED50
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 08:34:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7505B302EA9E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 07:34:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CD4936683B;
	Fri, 13 Mar 2026 07:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DwGqpX+Q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eLNcRflQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B94A33B974
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773387291; cv=none; b=un2ulkTx7ePvd4qWenGWvEJ/m3e4XPAAX6cbSqx2Sm6hG6Tbinm8+ES6sCIYNacf/H7xsYVXiHF4hRoza8+uvJtnePvNS35W63hP27/38Rsk8k+IW4KRQOcHZeLSWVlbLDkJK3FDlnJKrGwVjJaOXjAwHKzLA1B4yCfFKS7IIOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773387291; c=relaxed/simple;
	bh=DJi34l55nC0jshmqjUK4O+tmpesNldcVNWMQq3/FKIg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=p1R5keSfdJ4x0q/lYuTDPhslPFXdV7r62IUjtJ3AJ+oy8kceEr1IoFcIRzrS6CXm8Dz7S8VrvLYivMc99DDFXJ/cjoBVtgqJyecc9Is+D5II4OLr/AD+PRmaSNv/yRnHZw/S67yoac2ospdfaMNqP/qTuUjxrhBkxL4a4+xkGyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DwGqpX+Q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eLNcRflQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tlim2018424
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:34:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hELCUs/F0rEveloJZAAxgjq+aHyLZKhn2O84b+AWRDM=; b=DwGqpX+QrqOaedXW
	7nvWuhK/b1JmSX36mpulkJiLUGzJixLkGULxAcx2o88rgEyK9AunDS7edllxVDFk
	G+OC6UWWzTyLyIteJaq4VjGNh/jIhP+Y2DGYnC5vvGvduw//r4lZ83GaeT9dFWq0
	bKjPe8DlEMrojHk5jVMWwbO7tf/ohpep71C6hyzqX5jhXCCAvAqUM/1PFoLnkAne
	S/YMkU4izjsR40jvikoiAu8+xgrWixtcXUVpG2f3O3Hn2w3LcLGa83N3/na1I4lH
	jJDr+aYNhfRQETYOJTq+VMurBcOCr9/1Zdz/1TCOPAGZHKtRycH2VUI9sN6ph8MJ
	Lkc3jA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh4ww1me-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 07:34:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd81506677so1124434885a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 00:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773387288; x=1773992088; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hELCUs/F0rEveloJZAAxgjq+aHyLZKhn2O84b+AWRDM=;
        b=eLNcRflQ5miJhjzBTMhN3i+tAbPY1Quc+7IUQJUZa5PidwJVsdf86UI51NsTiNmuWg
         AEZ0WmTrFSkm/DsuSJXYTDXupq0wJpVOhwbPYelFPg+ag96H9F8e/9S1Hf27sPS8R/fG
         RBE+7PcErjjeyT9qNszI80WL3EPsFy7puLkORdo0ttIkU0wAXWjfu4Erw7mDKiwNqlVf
         4ILulxPBP8BQW1/Sv5vEoMqDALX4+nxysfrz/tQ90EgH7DV3kFoeLBaPkbIA8Lge7YyA
         ECn/JV2Li6NGzg/c5zptWqCZ9HCgs5Lp9FQrKTZcMus22Qt3iq155xWRZ+fPio6BiWx4
         o2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773387288; x=1773992088;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hELCUs/F0rEveloJZAAxgjq+aHyLZKhn2O84b+AWRDM=;
        b=TGgb9ZiPzbZq3UylblB7J29jvql6m3njPkV6MdPXrQ1gGQi5S2ABQJjgFZe1rAT+iQ
         1lvukv4rejpWm4RYewtqvVLYqWxaPMowaoLUKTyH77V88WFlEW19B52i2NGZ0MgZWCiT
         biV0aqE0KQ/jW7F3f/20QIVFJj6zjfUj5lUy+lzWXDvS+/wXdaxUhbP+S8qXkFUSMi8P
         qDbs+27Tr5gsx3bh5pVWbrXrZbLEZI0Hrlpa9DUBFACXlwRI4zowK2PH8ephleMJOrSL
         XzFUSfYkqeva2Opq1cHThDly97/5Wd5bHPpXBig4XWT82r8jOazs3YbB+Jyfcso/SOXN
         veSg==
X-Forwarded-Encrypted: i=1; AJvYcCUb01ZQZY5gyeCPUJqe1gW6msehn3MDr7viBp5Qs5wI8XCg6VYscG2qy/4qyMTRFlcf7elFeCl0CO6V@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6pubhIoaNSGijk244VLtxyadyE4CNatnqlqtsmQFzNEnq/nuD
	vlbcg5LHsHLBFC8PqwMTk/cY9iKPPLAz5u9nZFa6JxCR6pwukvcHlPodWzdhxhD4LOopL9Q1e4e
	pf0jxPoOwoGA1SLAQ1x1TqLk3hZEWOUrToeq7KaKgGwtFH5iRx6jA7QiOEvlnGfzB
X-Gm-Gg: ATEYQzx6+WmkIZagRiRQzf5AC6lRdRu+H7wBped/CL6LS49hSpnn1WufrSJttyUhyAX
	ylppxVtEmRCZVOE7Nutvog0TUsjZ0N3RGeG4zjBztUHQeD3F32LjLdJFbraSKCllmw+JhRNPQ9/
	P9nTveJMEtpbYF+7ascTwqiLrFImIYSxWLCbuKcs+OOwk9cONNmQWkjS7cTrLxYCDJbHzT564Wv
	4yzJ/FmRmrdvBfgTV66ajDjavrOlxm+wT7ZjuESWw15DoI4+Trv/revUrY7JQVEfFRox1B8kd4t
	DBaB655uURewPIimjq7zVBe81JW0t+NFGGOzEyaoYkIioyfCJBm1rEjO1niV9KnL8+XHFF6OmRe
	NciksIi2rbTRzmJO0fi6fn45mU3BwDyeog6oGMu5X8wiYCaO4
X-Received: by 2002:a05:620a:711a:b0:8cb:4d64:e990 with SMTP id af79cd13be357-8cdb5a50281mr316428885a.10.1773387287682;
        Fri, 13 Mar 2026 00:34:47 -0700 (PDT)
X-Received: by 2002:a05:620a:711a:b0:8cb:4d64:e990 with SMTP id af79cd13be357-8cdb5a50281mr316425185a.10.1773387287155;
        Fri, 13 Mar 2026 00:34:47 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48557a7473fsm13540265e9.14.2026.03.13.00.34.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 00:34:46 -0700 (PDT)
Message-ID: <2d658e4c-6840-4218-af78-b01a09218410@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 08:34:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Explicitly
 deprecate reset-gpio
To: Sherry Sun <sherry.sun@nxp.com>, Hongxing Zhu <hongxing.zhu@nxp.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski
 <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Frank Li <frank.li@nxp.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
        "imx@lists.linux.dev" <imx@lists.linux.dev>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
 <VI0PR04MB1211433ABEE52392089255E639245A@VI0PR04MB12114.eurprd04.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTpLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5jb20+wsGXBBMB
 CgBBFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmkknB4CGwMFCRaWdJoFCwkIBwICIgIGFQoJ
 CAsCBBYCAwECHgcCF4AACgkQG5NDfTtBYpuCRw/+J19mfHuaPt205FXRSpogs/WWdheqNZ2s
 i50LIK7OJmBQ8+17LTCOV8MYgFTDRdWdM5PF2OafmVd7CT/K4B3pPfacHATtOqQFHYeHrGPf
 2+4QxUyHIfx+Wp4GixnqpbXc76nTDv+rX8EbAB7e+9X35oKSJf/YhLFjGOD1Nl/s1WwHTJtQ
 a2XSXZ2T9HXa+nKMQfaiQI4WoFXjSt+tsAFXAuq1SLarpct4h52z4Zk//ET6Xs0zCWXm9HEz
 v4WR/Q7sycHeCGwm2p4thRak/B7yDPFOlZAQNdwBsnCkoFE1qLXI8ZgoWNd4TlcjG9UJSwru
 s1WTQVprOBYdxPkvUOlaXYjDo2QsSaMilJioyJkrniJnc7sdzcfkwfdWSnC+2DbHd4wxrRtW
 kajTc7OnJEiM78U3/GfvXgxCwYV297yClzkUIWqVpY2HYLBgkI89ntnN95ePyTnLSQ8WIZJk
 ug0/WZfTmCxX0SMxfCYt36QwlWsImHpArS6xjTvUwUNTUYN6XxYZuYBmJQF9eLERK2z3KUeY
 2Ku5ZTm5axvlraM0VhUn8yv7G5Pciv7oGXJxrA6k4P9CAvHYeJSTXYnrLr/Kabn+6rc0my/l
 RMq9GeEUL3LbIUadL78yAtpf7HpNavYkVureuFD8xK8HntEHySnf7s2L28+kDbnDi27WR5kn
 u/POwU0EVUNcNAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDy
 fv4dEKuCqeh0hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOG
 mLPRIBkXHqJYoHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6
 H79LIsiYqf92H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4ar
 gt4e+jum3NwtyupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8
 nO2N5OsFJOcd5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFF
 knCmLpowhct95ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz
 7fMkcaZU+ok/+HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgN
 yxBZepj41oVqFPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMi
 p+12jgw4mGjy5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYC
 GwwWIQSb0H4ODFH41ZZ3t1Qbk0N9O0FimwUCaBdQXwUJFpZbKgAKCRAbk0N9O0Fim07TD/92
 Vcmzn/jaEBcqyT48ODfDIQVvg2nIDW+qbHtJ8DOT0d/qVbBTU7oBuo0xuHo+MTBp0pSTWbTh
 LsSN1AuyP8wFKChC0JPcwOZZRS0dl3lFgg+c+rdZUHjsa247r+7fvm2zGG1/u+33lBJgnAIH
 5lSCjhP4VXiGq5ngCxGRuBq+0jNCKyAOC/vq2cS/dgdXwmf2aL8G7QVREX7mSl0x+CjWyrpF
 c1D/9NV/zIWBG1NR1fFb+oeOVhRGubYfiS62htUQjGLK7qbTmrd715kH9Noww1U5HH7WQzeP
 t/SvC0RhQXNjXKBB+lwwM+XulFigmMF1KybRm7MNoLBrGDa3yGpAkHMkJ7NM4iSMdSxYAr60
 RtThnhKc2kLIzd8GqyBh0nGPIL+1ZVMBDXw1Eu0/Du0rWt1zAKXQYVAfBLCTmkOnPU0fjR7q
 VT41xdJ6KqQMNGQeV+0o9X91X6VBeK6Na3zt5y4eWkve65DRlk1aoeBmhAteioLZlXkqu0pZ
 v+PKIVf+zFKuh0At/TN/618e/QVlZPbMeNSp3S3ieMP9Q6y4gw5CfgiDRJ2K9g99m6Rvlx1q
 wom6QbU06ltbvJE2K9oKd9nPp1NrBfBdEhX8oOwdCLJXEq83vdtOEqE42RxfYta4P3by0BHp
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <VI0PR04MB1211433ABEE52392089255E639245A@VI0PR04MB12114.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GcoaXAXL c=1 sm=1 tr=0 ts=69b3be18 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=A-5nx1WiAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=8AirrxEcAAAA:8
 a=3IOYHEpcAAAA:8 a=9h-gfNwrwJmJoll2F7QA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=BZqX40pHnTnlEzTK8NCm:22 a=ST-jHhOKWsTCqRlWije3:22
 a=pMmX26BmL46gMeuRjYg5:22
X-Proofpoint-GUID: az1_XzFou52O3vR3MIvghdNTifrxtfcq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA1OSBTYWx0ZWRfX60J0BXWk5/3e
 cOpmvPpMl2/C+evcVfH6QeFfChVhfs608jXYUHcQIbwCFgNOnpErZ021mFa1hkKDnEqT/5nbR7N
 JTOYTBDSeFHptQDNGvHKch+xtpniiwtuV+josNZx60WYa0CVABjcC5lALhgN+mObU16geAzT08B
 RtTWA7Pl/rphIbEqlyAhqvNWJAbZIjvhgGIcAg8Rj61ECMizAODFSzcIjUT2i05BlQCpIsPGKup
 sNBD72ahlp4VaK50wXGf7eZzODDuMYdOYIdvwm11P8gj70c2ErH4o6wCdGo3NjfH0wSk4YQuN57
 tEPV1LrofWmesz8QrmNiAPdWsFmYhO7sDtFpkggIQMf+1d5RFi2We069/ZJ8VlQPTd2EUHIf52v
 4dfhCSz+dz0kGpHKMI6HBxAYB7Fl2lX5jysv8P3hy28qdIw1HRWd0HdPb0fx79ywCJ1af6jDclr
 zKKsb6zuhcBLk9S6qOw==
X-Proofpoint-ORIG-GUID: az1_XzFou52O3vR3MIvghdNTifrxtfcq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 suspectscore=0 spamscore=0 adultscore=0
 impostorscore=0 malwarescore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130059
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274951-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,kernel.org,google.com,gmail.com,synopsys.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,nxp.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A754527ED50
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 13/03/2026 03:27, Sherry Sun wrote:
>> Subject: [PATCH v2 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Explicitly deprecate
>> reset-gpio
>>
>> The binding references snps,dw-pcie-common.yaml which already deprecates
>> "reset-gpio", however mentioning this property here lacks this mark thus
>> code is confusing and suggests property is not deprecated.
>>
>> OTOH, the property cannot be removed from this schema, because it is an
>> ABI implemented by Linux kernel in gpiolib-of.c in backwards-compatible map
>> between compatibles, "reset-gpio" and "reset-gpio-active-high"
>> properties.
>>
>> This creates code and binding which is not obvious to follow, so rewrite it and
>> be more explicit about:
>> 1. Deprecation of "reset-gpio",
>> 2. Relation that "reset-gpio-active-high" is used only for that property
>>    and not proper "reset-gpios".
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>
>> ---
>>
>> Cc: Sherry Sun <sherry.sun@nxp.com>
>>
>> Changes in v2:
>> 1. Rewrite the commit completely after Sherry Sun comments - keep the
>>    property, but add "not" clause to forbid usavge of
>>    "reset-gpio-active-high" and "reset-gpios".
>> 2. Because of above not adding Richard's ack.
>>
>> v1:
>> https://lore.ke/
>> rnel.org%2Fr%2F20260311154955.145120-3-
>> krzysztof.kozlowski%40oss.qualcomm.com&data=05%7C02%7Csherry.sun%4
>> 0nxp.com%7Cc630bed6bc4f46715b4408de80675002%7C686ea1d3bc2b4c6fa
>> 92cd99c5c301635%7C0%7C0%7C639089378371805072%7CUnknown%7CTWF
>> pbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4
>> zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=A%2BiFa
>> kDVdjPn0JJxUDlTDt1ej4iqnBivDktjwbcpFK4%3D&reserved=0
>> ---
>>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> index 12a01f7a5744..12cd1b9f78d0 100644
>> --- a/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> +++ b/Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml
>> @@ -62,6 +62,9 @@ properties:
>>      description: Should specify the GPIO for controlling the PCI bus device
>>        reset signal. It's not polarity aware and defaults to active-low reset
>>        sequence (L=reset state, H=operation state) (optional required).
>> +      Deprecated, use reset-gpios which respects the polarity expressed in
>> +      phandle argument.
>> +    deprecated: true
>>
>>    reset-gpio-active-high:
>>      description: If present then the reset sequence using the GPIO
> 
> Hi Krzysztof,
> This property also needs to be deprecated as Rob suggested in my previous patch :)
> https://lore.kernel.org/all/20260121164002.GA3427694-robh@kernel.org/

Heh, why that patchset isn't merged already?

Best regards,
Krzysztof

