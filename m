Return-Path: <devicetree+bounces-249217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F26CD9E30
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 17:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 60417302F825
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6589255F2D;
	Tue, 23 Dec 2025 16:00:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nr+rp8pA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kscAUAzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D7271E1A17
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766505655; cv=none; b=LcjzZMpNjmHlat5eRzoUrx0EHAVdl2AcdWSe7n0vwjA5JOk7FtTpZXG2o2W/jqqoRnbc6bM6Q00FEEGwZmtR3j84uUsJbWhN64cQHUKzxnqxmjBFsJUNk1UCQa6QytwgrLhT+wRB3vW+uKc+OZC04JwTzm8BLsNsYuwOFgbY1aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766505655; c=relaxed/simple;
	bh=U8TyQvJwYC/7ZZY+a4zcbRXifnhqatiepRyUEU83pw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t/fEu33htQSRHBTn1uadnn7cQaUis13dZ7rorgILMJmC7Y8emUIPe/QxhJRdS4eyb1cGd/nZrsW6nwrs1q6pbBvqKFXE2uaE+K+1u+B5lRTsgVPz4fZxEdgqhJSX1hJUyef1eGgNpWPa+ELD/lw4S1Cw88J8AdUw2aZnJC31WEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nr+rp8pA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kscAUAzJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNEN9X4913513
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:00:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Wf4+CwSpKPc/Y1J8w9AFa948
	/l3Xxemy6xO0cQgHFnE=; b=Nr+rp8pAgz4bMCnFp6a3ZEv/uu3Vuq+b0FOJkKLu
	cV2tWjEdgsOS2Ooj7oYr8YiutOJa7gwZ2aiPJ8asRkz57yEchxFPKBf4N+q7cEox
	R3TXT/sL3a361EqvwB/TKuJgtckNwt1MqbaL5RgjWUzmkzWG2t66IfzKK9VnvUyV
	iGcORF+qd4NlLToBGLgKjxHgkz51wrHKs0EUdOpoqAnF1vJNpZ2x8elq1pd8lZhp
	MCfwYWI1YD5sp0xGKS66H7odmuwTFFhp6Iqro9LBTCTF3CHC694WTXe9x2QH+ZEf
	aK/R1uPlEC9XCHXCxw6SNyOgh4WIPA29JtROTikBgp2jVA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7vt2g8kk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 16:00:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed74e6c468so73968041cf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 08:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766505652; x=1767110452; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Wf4+CwSpKPc/Y1J8w9AFa948/l3Xxemy6xO0cQgHFnE=;
        b=kscAUAzJ2o6NpUu31vZ9OOuxQ0b9Qr4yHAp0pCLSyMjxZ5c8eLvGrc6Lpk/BUZosrQ
         /70dpmC3H+8Bu6EsbKlCPtzuZ1ZMCiVxcdBe0c3epnR3R0LV383ONXmEfFYMx3+NUDfJ
         LZheAVXgYxb4mjuBewJBG/X4QnD4PxNtSsDdORiUdwrfc5bNyZjvbU/pcVGt7e46frpx
         zVorWWHpHpEU8pLw0Ef2/Sd51rF1jdsVT2J1ieK9QUrfzUVcA6UXMAbwWAnnd4+KG4Zt
         s4YAH/CsOcYpIpPzJmaISuKo9YjdTqXsHlTN5+KuY3QU66Y7DbpAErTVmYTeoEjA6k/j
         swYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766505652; x=1767110452;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wf4+CwSpKPc/Y1J8w9AFa948/l3Xxemy6xO0cQgHFnE=;
        b=UzEsf2+k+Ay4SXzVLMe9lt7U2LrNlsn1TBC95Q4sqMA1O71xHAdiMtvDp+CoeVePPk
         Ydnh4mr/iRSZ3ERjvDe2ThwNx02h8OEIMaMMYdpJxGJQYuqimd3S5qI+4tnFWe8DWUrG
         +of/2gwYjHkk0YLaRHpjiNGELSwuDZBSgZpEwNABSM7rRzP3vWXREwi/367JSPyBOmGB
         8vq719xQSMwK04E3KjHFdpH5Vnwl4q2GWM+N0XnjlQHaacWFiKogRfin+xR1mYgTYhVu
         il6uoAaJrV1nRj7pavj5M41BpFXGRP9VrPoBT4bH+hmjzMTBB0yi+mDqAokixd5qCdKM
         XFxw==
X-Forwarded-Encrypted: i=1; AJvYcCUSLe+u8sdVcJr64e7VW7wOqiLL84wayLpUtZ1i//vvpTMQ5gf1S41P1z2wR4cBco+0vrF7noXj3TCN@vger.kernel.org
X-Gm-Message-State: AOJu0YxNO+rjcDw3QlOwQOcrUl77FaGft73IxbjBqxRiFIr00GAsIAAW
	qsIRGeuqojwVeP5yEnVtVY9c/VKR1xX/Qwju9zc1qdxq5nilG6MC4F2AhrS7LYlbwHjUwYe46wZ
	ShY0/IJGhmCb0rPswjETXGwYgX1xC2+ewSUy6/6uvOGPI9aebBIMU4WHW9zDNqwRR
X-Gm-Gg: AY/fxX4/I/6qYdUOCqY/XUwnKhHqAiRFZiCcBes+2uYr/UmZFcYDPctfuFTTltgEBDD
	JUNP884VGH7ycA+lOfum4+Lm5tdL42g1Y2bln8XiDOEdNZLO+HxrTgjjHm/wnaweY/8bQL5pOjm
	2z+NGobUUMEAafTD8a+dY+9Vnqdd7Z5Kircts1pPaOF8MZLujUTWb6PsUaTojsjpHkqqVm1odSY
	6G3cfy3nCzFef/z3lJpfTHe3s9qKyjkxQ75A5LxKxDW4bnkHCEryQb81e5/dsGCXXQEkIFK07FI
	X4iNnRnYMlBZnM73y+3tKYn1FFQI4yPbezlRcjAquik+xsY4RjjOEqo1gn3WR+Ofxp1xHu/yabv
	hLBB7k33D9O9H422ODgemng==
X-Received: by 2002:a05:622a:a0f:b0:4f1:e9f7:4dee with SMTP id d75a77b69052e-4f4abcf9043mr220380191cf.35.1766505651330;
        Tue, 23 Dec 2025 08:00:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHUQ9NfH2NQZJU7mtYDnuzRK+AhPP9tE6G7iactVTrFhz+atWa4wjO4IKj78Me53QYltT7HqA==
X-Received: by 2002:a05:622a:a0f:b0:4f1:e9f7:4dee with SMTP id d75a77b69052e-4f4abcf9043mr220378431cf.35.1766505650368;
        Tue, 23 Dec 2025 08:00:50 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm14276727a12.31.2025.12.23.08.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 08:00:49 -0800 (PST)
Date: Tue, 23 Dec 2025 18:00:48 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
Message-ID: <ms4r24li6bk3dvyjas5sor442jvkptz55yisdnaco6qdsyvsda@dt4lv3t366cg>
References: <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-0-fdfc6ba663e6@oss.qualcomm.com>
 <20251219-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v2-2-fdfc6ba663e6@oss.qualcomm.com>
 <3fcd274f-2502-4b3b-8a39-daf5e1938bed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3fcd274f-2502-4b3b-8a39-daf5e1938bed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEzMiBTYWx0ZWRfX964AgEvR5be5
 l4AJvZT0G8LlzVq5nexdAfAe+7h3TxG280UVOveYpV+ok1Nh6TW446JzYz4fmZRECWNXEW6Qzw5
 cyFjSRJVuUCo+exgUAJuqHaO1hbfk51uk4KikNZf9086dMeiRS6s3tcZjtQ/OCB/4493G5PtEal
 1iZHWCUUnMtwiQkpWY24zkybKROoy5/hh7VFPF5TTNbAK5cSlrxOJD8JmEjTDtouEdc7r+VyUn5
 ULY3gRCPDBdiMbGju22OZO1d4wZgYMNUEr7ED7KcovHKMQId4A8Q6u7v+D9UONZB4u/MFSlZMhO
 pzWz8cWrBdI8T9aJByi0UdhLpnpNlzr1Xg97Wy7d/x8rmPo5Hl3M0/3LXYHKovA0WzJnfmJSUDw
 D/QN5OaXyXw611imjM9wf0mdRlM9cBHo1REVg1LwkDPT+WkLIT+y3Wh6w1fmRY6KVVc/vj4eAPA
 00r5X6IozRla1Vy9Uew==
X-Proofpoint-GUID: Cw-nzze5RSsETCEgzTev7yac7MVXjkrQ
X-Proofpoint-ORIG-GUID: Cw-nzze5RSsETCEgzTev7yac7MVXjkrQ
X-Authority-Analysis: v=2.4 cv=brtBxUai c=1 sm=1 tr=0 ts=694abcb4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zMAY4Xzx9T0OtoEEl6MA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230132

On 25-12-19 13:15:00, Konrad Dybcio wrote:
> On 12/19/25 11:00 AM, Abel Vesa wrote:
> > The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> > hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> > block, same as older platforms. So describe the APSS WDT node and mark
> > it as reserved, as it will only be enabled in EL2 overlay.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/hamoa.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > index a17900eacb20..b65dfad71c2f 100644
> > --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> > @@ -8302,6 +8302,14 @@ gic_its: msi-controller@17040000 {
> >  			};
> >  		};
> >  
> > +		apss_watchdog: watchdog@17410000 {
> > +			compatible = "qcom,apss-wdt-x1e80100", "qcom,kpss-wdt";
> > +			reg = <0x0 0x17410000 0x0 0x1000>;
> > +			clocks = <&sleep_clk>;
> > +			interrupts = <GIC_SPI 0 IRQ_TYPE_EDGE_RISING>;
> > +			status = "reserved"; /* Accessible in EL2 only */
> 
> This is technically incorrect - it's not accessible if Gunyah is
> present, which is only somewhat related - if you run a different
> hypervisor which doesn't explicitly block access to this region, you
> can still access it even though Linux may be running at EL1

Fair enough. But in the case where you have a different hypervisor,
I guess the EL2 dtso should be used.

So, since AFAIK all devices come with Gunyah by default, it makes sense
to mark it as reserved (or disable it otherwise) and then enable it in EL2
dtso.

