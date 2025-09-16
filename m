Return-Path: <devicetree+bounces-217692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E11B58EB5
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 08:57:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D75AF520E8C
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8B042E040D;
	Tue, 16 Sep 2025 06:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jVa8Sre4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FF286334
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758005846; cv=none; b=MhmYwbzvNRX9sxhjEoQSXkSpyfSsG3f4otHj25sg9+/UiMynY3/yrpk86eGyhWyoo8gCbLynIb2Xm94SHuzEYxCv1rDJprgwHuyhOZ2PAJmp9ZmNW1wbsGAlPlvyUdqOt/TMNmD7GOTnawqPugQyBIUXrsiPUX9lN/7VsEIbLDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758005846; c=relaxed/simple;
	bh=VJqgGR+I8yQ3u1riqJusgJNxUJc7JbGh1X7CuNzrMz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E/uw3ECCzceso07R+7pxZz67jLb3uDv40HM3dyjAVidS7uT6HFLQMk5N5CAeqLJlqf8pWKPmWsj8vDNClITIFVtfqdLEWvl3kg9CjfiJuGVQiT4U5TIrC0c4bWFzCljz0JTjiA/bVGV6hdiz3RfmjKu9ZNj04QkN7ayQyJ+4y/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jVa8Sre4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G3pgcu014090
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:57:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yDOD6naCP+XeV3EVxxXgXxWe
	VWa+eq7jpdDsyJP98B4=; b=jVa8Sre4w3lXoBUivmQ6mnN9e46kDSeXxdGBWGa0
	JfG4j+WY/GXv2C/PmWlnx7kJUtfjgSAmr3xOC5jGtMqBSGYhr5RLiXTGyCIxzDb7
	LUpVq94FDMjHLam05wUVqrOmzP5HnM0LSXpA2SEZ/2kLa6RGKB19hMYmSkeNXLIL
	4cPdD/NXIW0k/1p+317qN9PYGdEPSComfwjX9ZQQBDT4dAG3J7iIjEDMNGBt9EVz
	EpSbUNbamEjdNLpGFh/PTZ3Z3fpPWUBpszoFgyCiBkZSPk2uQAdw1d+hhZiKWSO6
	Q5UU2mFtt211TfDLK9C06ESo90+NzfgZ898aWF0K+fbqAQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496x5arvxw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:57:23 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b5242b0f450so3550248a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 23:57:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758005843; x=1758610643;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDOD6naCP+XeV3EVxxXgXxWeVWa+eq7jpdDsyJP98B4=;
        b=aZvtBaXskgvbBRZJsC/9HyAfnXKjokCp9LmR5N2snhixTcQUyDWO5Ow7CQHeeiEZpB
         KVQqOvAA5vVfp84NtvsN3FFpwq+mmppHckmY2unRsv93QQDuejRSjOlstWIsfKEnUDJ+
         +pdRtK4z6nxufvvHnoc57e9RO03sqvFXmKHVU4XOgI1JD30fv6O/rgiNni5WLKyCjxfD
         2rJGT+CaZ/spOoMR45P5CHot1/K5Imz5Hu5NFPTG4c66Na8u68njboKswkpYa44EULbS
         auyXHwCtoSYKI1Eoxw3tz5Zj0EeFbC3XSXi0Bv8rm8VtmrwB3L0E1RsHE//tlhdEQ961
         CjxA==
X-Forwarded-Encrypted: i=1; AJvYcCUybCWtJeBJaZhfgU3tQEUmeD05zPK/gOcXhiyTCtME0nAMGzVh/Ws9ZmAd38AfYNmECOLxO57ce6do@vger.kernel.org
X-Gm-Message-State: AOJu0YzsEK+u32geTgFgQ3LUWgmHalsSqBgblIRWj0HsTj7CV3f0rcZ4
	jmhUwTDdQRT9NMEwxa559maoDa95uk9eEHGmexmp2PMsJ26/F4gaeaeXwCJ1fnCtrxHJYxD+xVp
	rh6EpU0Hf33Hx79Bi7il3mmQaMJDWb8zV0YH54dBe5ZEKAtXIuHNeahqurkEKJWvu
X-Gm-Gg: ASbGncvsN76wfI8WI79BlirPX1F8lM56Y9FYhQNsOSa/pnXWUsAshB1PWxtkPEy1DPb
	WyyJHFa/bXkUeGCozIWXNAXcyGuHtq5ds4ruBigp6LtD2f/RuXxe9IbfpVqhIz60WrMA39Revee
	7iHPbG7IhqXjrwfMMtj2aKzFvDQBWJQiqfcARC4hetxTSd96NCyu9LnWQR2KJmz0XnnLtBkYBaT
	kxugyYSXgUrLlTAsdeC/KLxPqiZlgxW1Etgeyk9FYwo2m36wu7kerkp+9uRI1KcldzJMlxFeyJY
	EY32Pumnu/+zwYpm5Wvsff3TkVfmFw+uH2b2ZhYI/bfIMiD6d6jGGKoj/WYrFrLSeHMH
X-Received: by 2002:a17:902:d589:b0:24b:270e:56c5 with SMTP id d9443c01a7336-25d24ca88aemr166330725ad.15.1758005842687;
        Mon, 15 Sep 2025 23:57:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4HAqsYboh1u5zQJIXFoukFFzA+7Y7eq8ylmhIrbJbC2vY6iiQjqmYMwdKUwYE0LFccwGbPA==
X-Received: by 2002:a17:902:d589:b0:24b:270e:56c5 with SMTP id d9443c01a7336-25d24ca88aemr166330495ad.15.1758005842191;
        Mon, 15 Sep 2025 23:57:22 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-260cf673181sm92629055ad.99.2025.09.15.23.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 23:57:21 -0700 (PDT)
Date: Tue, 16 Sep 2025 12:27:15 +0530
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
To: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v4 07/14] arm64: dts: qcom: lemans-evk: Enable PCIe
 support
Message-ID: <aMkKS6m0QEOWz7md@hu-wasimn-hyd.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
 <20250908-lemans-evk-bu-v4-7-5c319c696a7d@oss.qualcomm.com>
 <cb2a5c93-0643-4c6b-a97f-b947c9aad32c@oss.qualcomm.com>
 <8f8df889-3f88-4b9b-a238-16044796d897@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8f8df889-3f88-4b9b-a238-16044796d897@quicinc.com>
X-Proofpoint-GUID: mHni2e8ASfUZ6mK0JlMiKvOBlXN43YZi
X-Proofpoint-ORIG-GUID: mHni2e8ASfUZ6mK0JlMiKvOBlXN43YZi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDAxMCBTYWx0ZWRfX9/SrmcbKDQvp
 REPm6zh1iSCwHIaMyNkGdMQeJpfHTDLg5PLVkzpXCpqP/okhXjU03U6AIwAksg26v/5ElA5GSM+
 xslDhmJ1HHuyfbTgDQ8YWtYzr6x0pi5JwTOEVuFV34CqJnBI1wz1QDvVW5LGxcPmMiytxGlO34c
 NSDytsmV8D/zDsuksqFW+h0B+SmKty7U1JbvL2E88j2iPT/rG9qAPs8By2w9dJAXZ5+7RmgbT8p
 RHhz0ecUqgNptRC/6yfMnKmnLQy+lMADONtU/uDDLM0oeNWhC7JhvjUm1FXLI1ootOGn/cuqLJl
 5Vf8KSKGfWz5dw8Ho+Q/N7rW5zBCJbIN365VgiG0wP6tXhdc+WJfVbhBDGC8KdOrimv1jZllKc5
 IImXeUaT
X-Authority-Analysis: v=2.4 cv=WpQrMcfv c=1 sm=1 tr=0 ts=68c90a53 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=aPFnfdsyqS22SUcEH6cA:9 a=CjuIK1q_8ugA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160010

On Mon, Sep 15, 2025 at 04:03:14PM +0530, Sushrut Shree Trivedi wrote:
> 
> On 9/12/2025 5:57 PM, Konrad Dybcio wrote:
> > On 9/8/25 10:19 AM, Wasim Nazir wrote:
> > > From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > 
> > > Enable PCIe0 and PCIe1 along with the respective phy-nodes.
> > > 
> > > PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
> > > attaches while PCIe1 routes to a standard PCIe x4 expansion slot.
> > > 
> > > Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
> > > Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
> > > ---
> > [...]
> > 
> > > +		perst-pins {
> > > +			pins = "gpio2";
> > > +			function = "gpio";
> > > +			drive-strength = <2>;
> > > +			bias-pull-down;
> > > +		};
> > Pulling down an active-low pin is a bad idea
> 
> Ack, we should do pull up.
> we took reference from the previous targets which seems to be wrong.
> we will make it pull up.
> 
> Bjorn,
> can you make this change while applying or shall we send new series.
> 

Let me send another series with this change, rebasing on top of audio
change that is part of next.

-- 
Regards,
Wasim

