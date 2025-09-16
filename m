Return-Path: <devicetree+bounces-217823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCB6B594C0
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C392032098D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 11:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D0C72C158F;
	Tue, 16 Sep 2025 11:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dlMnqi8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAAE286426
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758020759; cv=none; b=KRnIFYfujj/DrS0bwBSGg5xiYK61cPL7kFCQWboHu762UI1wv+U7IytSxTrQ3kKjllodqkHG8xUewlgQcEBLHKFCsSVrNU6rRec4OJTZkY0JWY22jSEm9zSgcVy24O1pJVe4PLgI452LjKkGW8vDNPU7xhu08jVPNF7l0VKZuW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758020759; c=relaxed/simple;
	bh=Or3sS/huFAjjeAedfhopVNlc2SuDocesMGLsvA4ovd0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J4OLcV43e7SAd/7G4khdDA1nYMJPhob6Yb++pM3qbEKeXLQSvGFKQQ84eYzjOU2W60ljuIg4Phnou+P+0hNkIBsbB/p/vdO3bZCjAEMkOxUc/PJUYVjvxAYNiowQuIEoVwkPWFuKqq4RjYqKPdIkspFROoj/V02cATqoZB5szDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dlMnqi8U; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAdiFJ018564
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ViaUWXz7piwPDVzZe4GL/ffGnLLhDpYLwoddXmEXM0M=; b=dlMnqi8U2RnOWLuX
	aUoo0GYh4eO3jt2D79hq2zvH/s22QZ4in9+ugovXj7b8YuuCsexG8YKjLFdc9SHO
	3dmhpbPf7JzY92hJpDvqvOOhjThlIrGQjPJqJ1FVmzJK3fuGGwo/QmXm0Ojg9vPM
	H+t51KcT923S/64eW6v5izajWnen1tdA/1NWXt95CZifKbvu14UrOlRaVJRVbHUP
	iF7ePXDwHTyu5u3U7MfQLSmjlurJjO1XF5NB8I/M2cxz7DeHYanVxei9CsUhdLq3
	gjVsUtEMeI6knYUh5ShX0fuTR57RqRy4G3HoB/uOwhJy1sqvr+8bFLxoQAk7nUYU
	t8WfQg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9d0e9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 11:05:56 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-77e3b8505a7so10601966d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 04:05:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758020756; x=1758625556;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ViaUWXz7piwPDVzZe4GL/ffGnLLhDpYLwoddXmEXM0M=;
        b=CteEU53msdig0iBt70ty3rYQ4LlULx0VvKUzo4N3jCVg6NH7P0ZICxWaM28sk7VGu7
         KwY6PcIs4MtLJo/3ribYrATt63Qtd+N9e81kFqbK/i1oz8q0mXQ2rP5f9Secz0t18Wfb
         lzNVOA/CmVG0AFPG+ubRV4iSbOCPqoSkQH++w9bqYdCh4jrgVDHc1rPAKoGbC6eCBZc/
         SHM/iznGKJVAPajkA8d7GYXr8IQIX/aTjbqKt/oHXdR2Ri0X3yRrRLAXH9yGBm10lbqA
         /Bnh9AbyImsYkr337cKHdKxUESzEm7+WvuMYW+JO86C0OwAkka4bpClRt/DIPiHs3p/a
         qH7g==
X-Forwarded-Encrypted: i=1; AJvYcCVHEwZUBuMOoepGHlVKnmBBj2FGAjQqUMECazvCM4oOB65XvAoGsCbDmmhrLtQ6J4yHImSouic7lOPq@vger.kernel.org
X-Gm-Message-State: AOJu0YzyqdX3OD5LIRAHLF06nX1qyAgVwD4DCSUOecQov3vQxyGSWvXV
	LjLgNBxCYDlETBMtUaIS/gE53Hv6jHSEdt24Kgw8+knAj4nad7+BysJLdrAKvl0Yh1wmf1fY0oY
	0Fq3uTdGNM5+SOuYI5AhEHmwFfhU87HZRF1buXWpS5QkCxCJQdrvlSOdmZjzXpR/v
X-Gm-Gg: ASbGncv0SoqDx4f/OLRJZMnPXsT/gix5/cOj1oiMDU+DhmcAUQmmri7VbzxhsDkR6pf
	7UW9XjzcEnnwtii9IjEdsE2x+dI9imhniX+TnMsWV6qvxHcAzE9cNmxiSwmgWJXAWDNhsQ/PL0b
	0uWNcDiNENNPFic3dbXtOXhHK2VajYyMUlwAzwuJsyU8krW/Ah//+Mtjj9XUmVWY4kz2xHU/WPj
	pr7zyWo431zZb2yc7faRH/z5MbmLGDL0ifFaL/WilBwn9OH65o12CZPyu/ue7YLdrYIPkn3geq1
	QRcP++mBaaJ9iGXVUKHKDjAA2Bhz38V5WWaUbq8no5UTQ54kWfaUBY24t/zMc7V+7LNiv78fwWI
	7gl6dxhVs/7G9JyroTSUh4g==
X-Received: by 2002:a05:622a:143:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4b77cfeb0a8mr138161891cf.4.1758020755585;
        Tue, 16 Sep 2025 04:05:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHwsWlh/wMA1kgn62I3osn9yA6YaFnlN+94SeqOOqPpYtWKmcu0OzDbrZ+IaTwxiRXlalQ7pQ==
X-Received: by 2002:a05:622a:143:b0:4b5:f521:30f7 with SMTP id d75a77b69052e-4b77cfeb0a8mr138161411cf.4.1758020754944;
        Tue, 16 Sep 2025 04:05:54 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31287cesm1146190666b.30.2025.09.16.04.05.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 04:05:54 -0700 (PDT)
Message-ID: <cd6d164e-a6bc-457b-97d3-503b897fbd62@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 13:05:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
To: Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
 <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c94494 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=lLTZtybaiap_q6JmIOoA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: m-pz4XdC3z8sbMmis2t61icOR8cFTLoB
X-Proofpoint-ORIG-GUID: m-pz4XdC3z8sbMmis2t61icOR8cFTLoB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfX5vGRS1ih7y+3
 bA0vc0UurS4RoMiwDYfU1p2l3gK/hLhvMuY5tp1zrOY9FTvpjmZkbXgmNt1VYPLbrYbTbGx+brt
 q1PTYTzeI5ilREEK3I/11WXmyVXOSIpNqjAW1THU6CFZGc9Yli+MDxlaIkE9iMehZfjfAo9nAwG
 xID2wknUA1/18IuId6aNg2PNJ7IT24BEC5bZMph0TeVYOj24LnUE7nhMAht/l3OcRdH0WC7Kx15
 V/YOzZvzQ5LIuwkEWwWvqYAcG8JaSRo05W3PpFsWjC/n/TQMqT5nZ/pHM9fAjEwX4URWUF+ulC8
 QyLCTGMFD2BbyENm/XDhb5RM+XHc1t9B6f3RLP0JLQkOJpC8BRLRYr+RpTTFE/htPn8QsDqI0Az
 wyeVvi5I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056

On 9/16/25 12:46 PM, Wasim Nazir wrote:
> From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> 
> Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> 
> PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> 
> Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

