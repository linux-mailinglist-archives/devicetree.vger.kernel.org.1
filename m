Return-Path: <devicetree+bounces-171158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B200A9D936
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 10:08:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B3F221BC7A8D
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 08:08:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F8BE221702;
	Sat, 26 Apr 2025 08:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cf2jZyql"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8981CAA98
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 08:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745654897; cv=none; b=YMnUgdtjM+qQkyRdT0HHwpnnvA3mUK/i9rhutS4Cihb/rBm8WndprCy9RZ3id1ywUcrbPrZnwStCKOf9dqsewxhzVUr6uudT8RA3TQ8og38dHdbRlW/29QDA7zGw5OQf6+SZ7+hk/ZLOkT4cjAOO6OqSCWQ2W5JgMipXiQ/G2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745654897; c=relaxed/simple;
	bh=Dlt7aBLeCl4AlFXzSEuNAJxkcpY7ITvQ8b6Lp8UpIp0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YH3HsGi74PajaPv/V0hYp3em/CphDuATBas5gclQpwwNYrr6UsjtK19YeadjygNVEVFMHQW5wTqkyPGi5nMMeHXIv6Gt5TvO2kkvsafTv+gkNYH51MBChmhB2SNg3+kZDF+iYeC62DQZOfDx4vyLE1R2JsNeBeNpuwYP/SJC2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cf2jZyql; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53Q4lkjj012085
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 08:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9EFbB47sE3xwvxvrhzJIeIl2
	uzzkjB+RQMWDdNRqAoE=; b=cf2jZyqljKEJ43oOvrfz6BhuR8ZzdTpke2awjpy0
	G33xKuAYvrNra4lBpJs797gOSphQnMt/jDKtvGMD96pKYCSeq9VoAJlgbggok230
	i6wUdJoIrOMfAr64BsfbChROYVaCLENtdwsV9JwbfAsEwR9U6Nq0HZH4FKhsZFlS
	Wd2abcqtvitW39FB/3hB8sh/V3zN6exaUURHiK69vECjZaLMU26uiyJaJmbcz9kO
	f5259kJbc346VFmnMV2d7x3czh+2e94Wc1XfsD2yL9MyIEtJpC58HmK4Rny4+Ucq
	0Pf+P5PuQ5IJop3t93qKvJXivoXFH2HEnwuka9ouLnAg7w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rsb0dsd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 08:08:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5c77aff78so883785785a.0
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 01:08:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745654893; x=1746259693;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9EFbB47sE3xwvxvrhzJIeIl2uzzkjB+RQMWDdNRqAoE=;
        b=AWyUpqpQl+i2cm5+mYNJyR0SZtycG7tzeMfBzp7QUxmwNPPB6lQa81uKsseDSpcqwq
         sTp9ys8ZAYkt7wtxP8U4wJkiYvG9g797y9Aakqo0Tv2JRpPgsS5BFr6OxvpXu3p4arjZ
         2koeecE8golxze9c0gruyDvGC4FRDOuFFpmMrO6P2/e1nXFnVeH7qg+XcIkiW9qZVQtn
         o+24GyFI1UGbrUr0jqFXkJiUvOECKkqPw2D7gCInsqtYjYIDyofENgJyCSGwf7Gsd87f
         OjaSHMHqNceRqV3wcp4uMkjIch6FKN9Xc35SbgpuNiD6bVnKtDvSyz9kr26HPaNeXxc8
         uW5Q==
X-Forwarded-Encrypted: i=1; AJvYcCUnJpXmHOo75nyBHdM+2kvvXIIihWgSrfqP3bsadB0uXroGs0H0XKI/PW0n1qGCyb9ZvoU/dV7xqw4K@vger.kernel.org
X-Gm-Message-State: AOJu0YzoyK4SQt51WcOEGecjxVnah6ezpY9WzTQmn8BJL/QnroH76R89
	2IUBqF3w2JUWmN2KSJhpNSB50iplDVq0RlqCQyuScSnkbVGEtY10OKRBJESYqLghj5zZpMhqenC
	CbO617oVEam+tZvAuc+WFhUTmFaZIAfXOQdkDJKBZ4e9DOg/H4fy4Kwik6spfv3q8xwJy
X-Gm-Gg: ASbGncvBrHoYI9TtdLwA0qeoPNG0butT6xJFeRzv5Pp1dW/gE1L9FI2k2l0k5SUPAOV
	8RWZDFLdmnsdM5BfQu1MNNVyWXKw0D4Kr/pOehtV8cXGSWsz1VXVsXqAza2ZiwqQowPzf77dcvU
	75DgO8uIXysTl58hGcu0HI0i0viF9VWQ8mpfBZx4ZHGs55836sPYAVuQkPIpRsTlL5ER09tbchz
	EsASJA6MWTs+YsJ4nxfiPFyOP+FCdig2X3uYdij+fT9GGczahT3bgjH1Wj/WhUqEYWrl0rRpApf
	uQTieQnYS5t1UofQ1y5h9gIqLI+xbqCWpzOhUkH/Jrp0QdHLqr/5qkvNXPwRoqmV1Rss6kCocVQ
	=
X-Received: by 2002:a05:620a:1a97:b0:7c7:a5ce:aaf1 with SMTP id af79cd13be357-7c9668bfd6cmr325404185a.35.1745654893388;
        Sat, 26 Apr 2025 01:08:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFjGy3t361f7624u5g8frwWcUJjSKJlOuxkcWQgUhjMerF9jCifjeSU5oSzuYB53HD7UBLdXg==
X-Received: by 2002:a05:620a:1a97:b0:7c7:a5ce:aaf1 with SMTP id af79cd13be357-7c9668bfd6cmr325401485a.35.1745654892970;
        Sat, 26 Apr 2025 01:08:12 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3a051sm905004e87.62.2025.04.26.01.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Apr 2025 01:08:10 -0700 (PDT)
Date: Sat, 26 Apr 2025 11:08:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Juerg Haefliger <juerg.haefliger@canonical.com>
Cc: andersson@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        konradybcio@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh@kernel.org
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: x1e80100-hp-omnibook-x14: add
 sound label and pull out the model
Message-ID: <y66ic2iatveficud7rdt2dtyqeaoqasa2a366hdovc7f3yzvic@yyj5w3hu57ln>
References: <20250408145252.581060-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-1-juerg.haefliger@canonical.com>
 <20250416094236.312079-2-juerg.haefliger@canonical.com>
 <mit327e4qp3hch4xy6qmqmks35tq5w35rw4ybvs5s3q7osxbkv@bzvon2u3jsmn>
 <20250426094515.193e5f59@smeagol>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250426094515.193e5f59@smeagol>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDA1MSBTYWx0ZWRfX7iYKoLEyUC5P 0iD9cypwg2iQM2UXu2Y6O4T+xo/LZrghbZvrsUZvzv75ge2BuH2JDKdlptjAvZS5/6u1SyZ/d2Q Xhg3mdVm2rvgUpP8iMG2d8XdNJT5gq370Iz3n6PrLcJ5aON+UN8kRHFqKLQX85MThpaQMfq/3uk
 wk6qS6p9/yJ9VW91yWrH/oGV/Lvl2aVyytinNMto6edEG6URLUABF4xS9nDLn1xKRk/JN9ipFmc T2aC970ypkrGtUSPGfEHGh6ZleIrGaZFA2hkQIUXygy35NEIva9fWaBt8EhK4J/JZVRw8n1CanL fpG3jd5gZV/RMYsGbVX09efLxDUFX+IJOEaGF0zTxgIP0U3NrI8IBzjB96AqqiHUHSfzznIPXdw
 mBKOzmtvE5J2SPZV2cGkLM64BjadPQ6D+gfgPT5rggC9xPRGSr1FhBsI0/J82R/pUy6Faoie
X-Proofpoint-GUID: vp3GRSrtq0cDxvoM2rN2_8iGjYLme6M8
X-Proofpoint-ORIG-GUID: vp3GRSrtq0cDxvoM2rN2_8iGjYLme6M8
X-Authority-Analysis: v=2.4 cv=I8ZlRMgg c=1 sm=1 tr=0 ts=680c946e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=DfNHnWVPAAAA:8 a=9Q-tM1iNYF-87-NWVjoA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=rjTVMONInIDnV1a_A2c_:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 impostorscore=0 mlxscore=0 adultscore=0 spamscore=0
 mlxlogscore=958 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260051

On Sat, Apr 26, 2025 at 09:45:15AM +0200, Juerg Haefliger wrote:
> On Fri, 25 Apr 2025 22:44:42 +0300
> Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> 
> > On Wed, Apr 16, 2025 at 11:42:34AM +0200, Juerg Haefliger wrote:
> > > Add a label to the sound node and pull out the model name to make it
> > > explicit and easier to override it from other nodes.
> > > 
> > > Signed-off-by: Juerg Haefliger <juerg.haefliger@canonical.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > > index cd860a246c45..9595ced8b2cc 100644
> > > --- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > > +++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
> > > @@ -174,9 +174,8 @@ linux,cma {
> > >  		};
> > >  	};
> > >  
> > > -	sound {
> > > +	sound: sound {
> > >  		compatible = "qcom,x1e80100-sndcard";
> > > -		model = "X1E80100-HP-OMNIBOOK-X14";
> > >  		audio-routing = "SpkrLeft IN", "WSA WSA_SPK1 OUT",
> > >  				"SpkrRight IN", "WSA WSA_SPK2 OUT",
> > >  				"IN1_HPHL", "HPHL_OUT",
> > > @@ -1691,3 +1690,7 @@ &usb_mp_qmpphy0 {
> > >  
> > >  	status = "okay";
> > >  };
> > > +
> > > +&sound {
> > > +	model = "X1E80100-HP-OMNIBOOK-X14";
> > > +};  
> > 
> > Usually the DT don't use this idea. Could you please bring the model
> > back to the node? The label is fine.
> 
> Hm. Maybe I misunderstood but isn't that what Krzysztof requested here?
> https://lore.kernel.org/linux-arm-msm/bb95af7c-5e88-4c6a-87db-2ddd1fe211a5@kernel.org/

In the override, yes.

So, in this file you should still have:


/ {
	sound: sound {
		model = "foo bar baz";
		other-props;
	};
};

in the DT overlay (dtso):

&sound {
	model = "other model";
};

Another, more common option:

base.dtsi:

/ {
	sound: sound {
		other-props;
	};
};

one.dts:

#include "base.dtsi"
&sound {
		model = "foo bar baz";
};

two.dts:

#include "base.dtsi"
&sound {
	model = "other model";
};

> 
> ...Juerg
> 
> 
> > 
> > > -- 
> > > 2.43.0
> > >   
> > 
> 



-- 
With best wishes
Dmitry

