Return-Path: <devicetree+bounces-237186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 978B2C4DEDB
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:57:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0892F3B7069
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 12:51:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9863536A030;
	Tue, 11 Nov 2025 12:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DgQibGED";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GnqsjJ4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9EC36A017
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762864137; cv=none; b=ofW1wyQg86FXB07FTW9FYd/HGtdwmfCSfykhheddwcOUv3BxAMiM+Ka2jD+2eOdAbzNIMxhcdEDfwA4BZavCHLVWobv6dB/G+mqaLM+Mwvhs6lOumHbUYHWf8BlBT/uB3V2+WBKDJ9PbaQJgwOM/48IUcUvsmRfxG+68MWp4rEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762864137; c=relaxed/simple;
	bh=qWO+LslAAiZd3CNygxHIYmwELeyYi6yEhKewOMVfbd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j6KiuRsWe6wTVoWo3i8B/8wkMoapl9tqnd3EbljQs24GlLkvNKXzMcSKfXuFyoWs7FoONMnd4oDiGeyrgtlkoD7CXsP1/bilKEFWykjez7/RQclBrH0zxXolMgjgF039tP3Zz8KQ8nVO7bWynMEc7SjBdSoAudlghOGlruDOe3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DgQibGED; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GnqsjJ4v; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGBJC2165250
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:28:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QFlA+rmHCQw2mTHSNf1gtuKKDHdDMWf6upuETlt4zpk=; b=DgQibGEDdAnr38dn
	hlp1J2DOyIw9PACjKvJ3bhLr3qfAgXZRYpfrU1ys943h1nRU56sXJQcfYrCUSorJ
	TmUzfPoaRTlmu0DMQ+3IzfInrM1BhCC9WYiN0vg2VSbDWMc1GSl+LdruscQCWsB3
	FDioslIJPFV7YD17BPji4yM4QlPerQOLH4ugfoNzGPl8ev+vGCFHgYOIAV53nS8C
	YqVGcT7EnVTUhKBa/QdAI3GPKdIsXkf3t2M3adMkvfCXntz5nMxSvFJNfdUvQR/K
	K2spX6loxiPsFV4SMxcX0fPa8MlMgsJdxkOSqLtdIPX8sy+NoYkIXSFStvdkPsse
	sVlORw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abxhhh8hs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 12:28:55 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b22c87f005so1301746785a.2
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 04:28:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762864134; x=1763468934; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QFlA+rmHCQw2mTHSNf1gtuKKDHdDMWf6upuETlt4zpk=;
        b=GnqsjJ4v/e0QbcFNbdRLXaVV8obEjztvby0jh7HRsHOCn8GXAaBRjC+m2oRv1x9Fcc
         lDZtQ0viZSaO1w7YME4BJSaY8L1UA+aUiHahWBYti/RNZ/5yfmGwHI1mDmjgYjM3bFlu
         LO3C37PJp9M/doI9LE+MXYesfUw6m9k/c8AijdML7Jtu97sBLENviHC9Vtl8+g601TK0
         en8aG0W3vV51yvy1eWIG9iN0MZhqo+/7er3MnF87mSgd5lli7QsG0qaHEdgPajDwjpJR
         8mtoTZleEDoompV6tQm3b31NLGk56auMXILHNu5pFp01MeH6lHEFvPEYnqVUFwrZrXiI
         7D/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762864134; x=1763468934;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QFlA+rmHCQw2mTHSNf1gtuKKDHdDMWf6upuETlt4zpk=;
        b=FXLX/TnrrNzpPWNCwFZQjrRc6Bbrtdq55LSiHt7IXwv8E82wtZJoqh3mioNItZniDb
         mR8yyukt5o1NVm5iEAfuhvlz6B0c+hciD87H1SsOcnJOlfwCIXI0DmB2RbBzkAIqhGd8
         ZvXtfkdG+oORz4ikILiZo/TaNtk8c8O2xC1bKwB4v5dXAmn3MqZA/QtMHM8v/2YioUB/
         Z88h0XDjzmLpgAaHm81nNsMCTZgQENd8IZk7nVUMnyvHkDo3Nl3fHxb0N42L0f/pAuCQ
         G21VOx4r+TbicifmZ9itc8ucNvXr0l1r6+uIzJCj2KemnNLZm2EmMNsImh1EllNi9W67
         8AWw==
X-Forwarded-Encrypted: i=1; AJvYcCUKpYBpPR2f7nKTmwO8Id+djJKWTUMLa8Rlx/XzNas8WM1b6UwP2UiBgevHs4zWC8tobKhASFWAsvsQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyqYYP4sG7HRnfOXSIQ1YlMMESY36kVABn+wvLRaNKiJoeleGHj
	OyxOg45BgX7Li0qwcR/NhSrFpuGCYQ3kq1M+3LQRLeVoi+D0QcniPTCyiDdWBQ1gO6XJphpWNV7
	xty4vJor970sdTTivcTRETrdLGYxbqtmKap1s3L9/nhTNDDJ9oGSvVXVPBGiVFA3x
X-Gm-Gg: ASbGncsw5H3wjsqHj6A978PoMsEqsNzr0oupQ0Gw8wDiL5Mu5iKuzLxuuCvnpSAmfdv
	bu+5xf+hKCCdZpBshbzAoh1cFAIWe8kYMnRVQH/sMbfofAX4ipNYrUt0l5PFishPdAq1CC6/Bp1
	nBxOWfQgYLknwfs94sEH/pAgAx0MRBX+JOMhX96yV1WIIdzN3hqqjKTP2NQ6U1d7dci6QW62NK2
	vaHPawy89xezk3mGOqcFIqHJ8bPbsK+4ausCorNVxzYUa5jvTXNTo3wXKLS8lL1wjxrQA1T6IaQ
	bcG/p3nRvs98XHdCs+tDnyZTIqavZM3KbZpQAbvMwSKzmKFCz7F7OdPeI/0gyAnz5QtxBXcrxve
	oykfrTt0Qm0vqzBWPBy4qOYk1RTvBxEtbCD9Q9hclcJvcI/BpwIvvcSgcFWfqb5qesLWYMnXYja
	3x6sDuNIGfX3ET
X-Received: by 2002:a05:622a:d0:b0:4d8:1f72:ba60 with SMTP id d75a77b69052e-4eda4e7a7a7mr134963761cf.14.1762864133976;
        Tue, 11 Nov 2025 04:28:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFB0QADbO+w8dIjN2emZaXFkoCmnPbMKIptoyc4K6i/3GMqeYEKpmtn9C+u+nB5MxEt9+6ieg==
X-Received: by 2002:a05:622a:d0:b0:4d8:1f72:ba60 with SMTP id d75a77b69052e-4eda4e7a7a7mr134961411cf.14.1762864129941;
        Tue, 11 Nov 2025 04:28:49 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a5f0dd359sm41987281fa.32.2025.11.11.04.28.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 04:28:49 -0800 (PST)
Date: Tue, 11 Nov 2025 14:28:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Riccardo Mereu <r.mereu.kernel@arduino.cc>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, broonie@kernel.org, linux@roeck-us.net,
        Jonathan.Cameron@huawei.com, wenswang@yeah.net,
        naresh.solanki@9elements.com, michal.simek@amd.com, nuno.sa@analog.com,
        chou.cosmo@gmail.com, grantpeltier93@gmail.com, eajames@linux.ibm.com,
        farouk.bouabid@cherry.de, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-spi@vger.kernel.org, mm.facchin@arduino.cc,
        Riccardo Mereu <r.mereu@arduino.cc>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: unoq: add dts for arduino unoq
Message-ID: <vzpbuf3hrmt7axry63tgelbkj54kqby6pjnb3cynew6k476uye@6qonkynked2g>
References: <20251106153119.266840-1-r.mereu@arduino.cc>
 <20251106153119.266840-6-r.mereu@arduino.cc>
 <f20fd593-0173-424d-9951-e0f2ad33b4cd@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f20fd593-0173-424d-9951-e0f2ad33b4cd@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Pc3yRyhd c=1 sm=1 tr=0 ts=69132c07 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=7D5TFTMLEG-0mYwEVy4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 5Xu8fSQtOQVTvSkS9Y-QN0X0ZFOzxV5z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5OSBTYWx0ZWRfX/sWwjbTYhl0X
 Cbi2pduw0CX//2OCQL+iTJaMMgOj3JlaN1qpWxOMZoeaj27FbajqhbG1mk2ljWSHzqg7YRdh2UN
 DM7qjG46cm1xJjNCAzrTvnUCxbTkQPmQ91+VHI9VXoaGvonfspAJCjT52mZPzmeWL1B2yr30NsQ
 JljR5uwgTmpYH/UnfHyMkMOWsHCLD3gWpdpV7cN0MiZ7csEWmrVZ9Ak2Cu/6mYApBOEFEGwu4r1
 p8ZYqI96nlVSxKNpaSc7k/k5BRG9ZP5QmvHR/GuTRiiuTMprVcw3fYOyJpbUaScby1i7iPW42Za
 qJZtf1UvJtD+zcWLPK9/NthSBPyviHjaGXkNpF2VpmSdBfM+nrlGSbJAAl7ddtdtRQD37fEABdd
 C1lOoSR2ZWd77nKnqf7+DhMTOwaWvg==
X-Proofpoint-GUID: 5Xu8fSQtOQVTvSkS9Y-QN0X0ZFOzxV5z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 suspectscore=0 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110099

On Thu, Nov 06, 2025 at 05:29:47PM +0100, Konrad Dybcio wrote:
> On 11/6/25 4:31 PM, Riccardo Mereu wrote:
> > From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
> > 
> > Arduino UnoQ is a single-board computer combining Qualcomm
> > Dragonwing™ QRB2210 microprocessor with STMicroelectronics STM32U585
> > microcontroller.
> > Support to a simply boot to shell environment includes:
> > - UART, I2C, SPI
> > - onboard LEDS
> > - eMMC
> > - WLAN and BT
> > 
> > Signed-off-by: Riccardo Mereu <r.mereu@arduino.cc>
> > ---
> 
> [...]
> 
> > +        leds: leds {
> > +                compatible = "gpio-leds";
> > +
> > +                ledpanic: led-panic {
> > +                        label = "red:panic";
> > +                        function = LED_FUNCTION_INDICATOR;
> > +                        color = <LED_COLOR_ID_RED>;
> > +                        gpios = <&tlmm 39 GPIO_ACTIVE_HIGH>;
> > +                        linux,default-trigger = "none";
> > +                        default-state = "off";
> > +                        panic-indicator;
> > +                };
> > +
> > +                ledwlan: led-wlan {
> > +                        label = "green:wlan";
> > +                        function = LED_FUNCTION_WLAN;
> > +                        color = <LED_COLOR_ID_GREEN>;
> > +                        gpios = <&tlmm 40 GPIO_ACTIVE_HIGH>;
> > +                        linux,default-trigger = "phy0tx";
> > +                        default-state = "off";
> > +                };
> > +
> > +                ledbt: led-bt {
> 
> The labels (label: node-name@unit-addr {}) for the above 3 LEDs and
> the group are not used, please drop them

Also, I think the nodes here should be sorted alphanumerically.
Otherwise LGTM.

> 
> Looks good otherwise
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad
> 

-- 
With best wishes
Dmitry

