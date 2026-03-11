Return-Path: <devicetree+bounces-274095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id n12gGNFrsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:19:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8725826451B
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:19:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 606C1307E853
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B4530BB8C;
	Wed, 11 Mar 2026 13:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hVoNQyhV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eEsX6Z3A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763B92FD1AA
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773234988; cv=none; b=m/6fJ0B+UaBsc/wX40k177ollHW6zMVGX0TyqW9nTbNzNZZ/Ws6rrdTQl+E2Cums5yxHEVQkqT6vsmbocrXWebI8aksbdlfm6DZjCX6b5dCek9LFsQQNgyEPVvThS1DnJmrPKjEY+k1am0ja/WGD3aFWYHe5JjdkSy4qXy/r5lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773234988; c=relaxed/simple;
	bh=BPcBpTSLzR+M0khjQ6a8GS3HOQlO3TRcuDpZlI/Ctc0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fi+bGguMXhdYfWk3XS0ABk5LwyBiFNNVxF8hJhmNPaCxgwiMTZE0B4aJi0fhe0u3LAbwGxzl0oUWpICApfkqtlRueszsCiSTbuIOEctPcUHrup16QQzgaxIhvIvtJmA/VuBQ8gC48J1anFkpnHU0bVCs1taNO5TGrwHuuHOMzyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hVoNQyhV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eEsX6Z3A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62B88i9p508287
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:16:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kgO3mDUXwOAtuCC6J52bMWdN
	DFJ99hNEfn1Q6yBrXSM=; b=hVoNQyhVeWlWZ8PuOGIQk3PtMxDxv+MFV29zpEjB
	7qzYPnl5CjT3ZTU5PeNQ4tUT/CIS04vzFUO/fP7RK7TwVuF4EjQLFMNJRBGb/0MI
	ekI603UrOlXUFpLIe31MkTw9gfX58KHNLVKTIuZVPD9gha1Bhqj+z/jS92N4eP3+
	JB314G2UW0q/VqpTcREUMap9zplA5OJysDY2JIQ4d++hpWWj31usT4TbpBLzrEOj
	HE6NiOFwDPc4kbuIZDtn8tz/EIFtfERf4WJ/BJWEcAGhvvyZyVuoD4q5P6R8qy/u
	bGBNDGfEL7pyemn1mvXUIxbG+bN9r/HxuM3wAyXHRuu5LA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ctppam021-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:16:26 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5662a21d35bso139682265e0c.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:16:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773234986; x=1773839786; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kgO3mDUXwOAtuCC6J52bMWdNDFJ99hNEfn1Q6yBrXSM=;
        b=eEsX6Z3AcbNKu3zj1PCr+1tDHXqjH3N3F2WRfU9b6M5jyqlFR4sBMbyAZG1wIoAWX5
         rvSR+e3Kq6S2SUgkCeWjvadObI6gsBZo4dv/9PAw8SHp46wuDiTA5NuIJ0GoMiCTigr8
         hoxMD+D4/gv1buy6yiPxy/WtB/oxxDK9NrhUfSYSxG6mKHj8zavulMzhIjNPo7SK/lWw
         jDteRX6wkd1JJrOPwVIbedBax7krIgOW6ITmovuAiCuT61de6Eu+xRPwN3VNsYnx7ArV
         Wu7H1JFfUNy+o5qCFxc0VRfkEv6PhvG0Bz6+VN4rC/ltjA888kkWBGNqYfNGQq72wpEw
         zjMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773234986; x=1773839786;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kgO3mDUXwOAtuCC6J52bMWdNDFJ99hNEfn1Q6yBrXSM=;
        b=pe+x5AOFDyNd7opw4CJQvYrErn7xzNeRzk9cNt600nb7ayDCYiM3HyXkL+jZX7BkEq
         l6Nle1mRm2z8iHb/EbmtVNa0Kqu8cCQ/sNisqbQTtCH2zQtlJ5kCdTtN5F4ZV7ENMuNO
         HfjjojtWibeA4VRTsMNJFn0X5ubnfoTNQuD+HgBNh5XzDnX4dKWKyxm+tmFyLHU8iZ7F
         FTOtkehNH4e1FpA2SEQQKxJTc/O4w/KzJgu2CgUtfdD8k4+JWO3YNX2YRV1jZd+n9uyU
         +k1EuwQ0mJFg7psPmIbLcnnihiyX40n+xcWy9nIois+YJiObqRO+jgeMz1/gjOJP1t3Y
         EJyg==
X-Forwarded-Encrypted: i=1; AJvYcCWWz3rGv3zG4KygLWHNC8tuXV7thI/LwIha17A0+5YiBaeh720GZN5dlPyqxkymsAtXB7YLVNVE7apO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8gcrPIn1U+Q+4eDOtjU4n8Sp3CJa/C7tg/i/GO3KviBXiovUH
	JDrRWuHfIAtNS8D0EbIcn/nu51OFsyLp/KV7UTtHNSWWr9VvRVzD6DfurnXsd2CKjFmpsprLrx8
	Ii7EE6YdY21sKhyr+1tSPPCOnfcSXEsqoW/D36b/GyrmwwBaVYE+3tNZUCstXphri
X-Gm-Gg: ATEYQzzqQlvSw7CZCrbWMkq3Kf5CrtNCVu+pXNIDvEut0Owuw3JC7xhgBC/9zpERaEI
	Qa6iwAbxEL8gAOk2Ce4YuuuauMSYd9lLwcuYaBCl8vPW0sGdcG3Uk+7Tpw80PtW8K2R+XVCnO9G
	tVrD81PEiN772SKV9onkBHXgwMdGciA+DrLXVDqeYTxh5NnjQ128fxtBrzNDdRtK0tujCZwsE29
	904r62PKT06He5uj9oSMnun97MQJ5z1Ye9cFRgp8KgHwZIRtYYL7JuzDHxVp1Bdu347SrasOARU
	xeKjSQM3ZkjKX5fbHd096ojxJPXvDGBo/m0JpFqlcyLgD5ymxyHGq06vizV73NdqFHshxFf6rca
	6scpZDEwSWGthmnyxlWduwD9ESqA7rBNVFYRrhxfY2tI/dhi/uWaUdMWf1Xe5fmtrfu6DiwD0I8
	99hn40cvKKfTSFDKKky0gM0x6gv+/UyvTCZ5I=
X-Received: by 2002:a05:6122:e203:b0:566:22e6:35df with SMTP id 71dfb90a1353d-56b474501e5mr980243e0c.5.1773234985760;
        Wed, 11 Mar 2026 06:16:25 -0700 (PDT)
X-Received: by 2002:a05:6122:e203:b0:566:22e6:35df with SMTP id 71dfb90a1353d-56b474501e5mr980199e0c.5.1773234985331;
        Wed, 11 Mar 2026 06:16:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67e70d66sm4087301fa.40.2026.03.11.06.16.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 06:16:24 -0700 (PDT)
Date: Wed, 11 Mar 2026 15:16:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: cristian_ci@protonmail.com, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: msm8953-flipkart-rimob: Enable
 touchscreen
Message-ID: <cddnaabou6vdcdt5pt642wbf3w6e7vwisrnczc3b5wsqtliwql@sqvdkq47tibj>
References: <20260308-rimob-new-features-v1-0-aa2c330572c0@protonmail.com>
 <20260308-rimob-new-features-v1-5-aa2c330572c0@protonmail.com>
 <f6029a8f-07d7-4872-813a-ff98fd11b5af@oss.qualcomm.com>
 <6ddgxby2wzaa7mfbc64a4ld2rdbo6427csw6blzg5alstvkfv3@usfqftgctnzs>
 <c58b9a2a-8de4-4831-be69-33b158052f54@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c58b9a2a-8de4-4831-be69-33b158052f54@oss.qualcomm.com>
X-Proofpoint-GUID: PBq-GFv4oij5KwjmSuQLcvMfomZRL0vI
X-Authority-Analysis: v=2.4 cv=D7BK6/Rj c=1 sm=1 tr=0 ts=69b16b2a cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=sfOm8-O8AAAA:8
 a=JS798oX9D395Q03-T_IA:9 a=CjuIK1q_8ugA:10 a=tNoRWFLymzeba-QzToBc:22
 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDExMiBTYWx0ZWRfX65g1I1+XzsHw
 0QGRAQeubBjfeRxGGospg5A5WN+WYjpRRBzNddYc3tQDxr9J+UVfmtlqkIIc6JwI2YhcmkRCpVZ
 OyZAA50Nw9NY75aSJj57dKb0JvwG1VAxGGFelPCy7qG1jwLYz/E5DTvLvxZQyDw2Umfk1y8r7cr
 a99R+3Nt8dtBXP86Co/mrege0wZRCrPLx/0Di62u7C1ZmJqUt9SVUKDkNX+/X2S4o9bdaiTuyxa
 Xbdv8oawnVMDR9VySMBX4C9b5oc8k9GxHM/FhU6bXX5R4eSvOH0VscoP5s4EqXaBVyuXwJ4L541
 Z86W7b7Rui3989J/x85E7vGLwSXIDdrW7duz4L1do8NSzgci69XvRpcpNP9p+MJs3bSJ8KgcLho
 ZXOgWjJTRdaf+0jP0kBAifR6GAOK3L6txHFK11PSRCH3BzasF5ihmRyQEUC3gJUabkUm9ByPoID
 yF4PSnqBF/++/SKKe5g==
X-Proofpoint-ORIG-GUID: PBq-GFv4oij5KwjmSuQLcvMfomZRL0vI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_01,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110112
X-Rspamd-Queue-Id: 8725826451B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274095-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[protonmail.com,linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,lists.freedesktop.org,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,protonmail.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,5d:email];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Wed, Mar 11, 2026 at 01:47:48PM +0100, Konrad Dybcio wrote:
> On 3/10/26 11:49 PM, Dmitry Baryshkov wrote:
> > On Tue, Mar 10, 2026 at 02:08:40PM +0100, Konrad Dybcio wrote:
> >> On 3/8/26 4:52 PM, Cristian Cozzolino via B4 Relay wrote:
> >>> From: Cristian Cozzolino <cristian_ci@protonmail.com>
> >>>
> >>> This device uses a Goodix GT5688 touch controller, connected to i2c_3.
> >>> Add it to the device tree.
> >>>
> >>> Signed-off-by: Cristian Cozzolino <cristian_ci@protonmail.com>
> >>> ---
> >>>  .../arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts | 32 ++++++++++++++++++++++
> >>>  1 file changed, 32 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> >>> index 7b2849405462..709ea6fc9fbb 100644
> >>> --- a/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> >>> +++ b/arch/arm64/boot/dts/qcom/msm8953-flipkart-rimob.dts
> >>> @@ -94,6 +94,31 @@ &hsusb_phy {
> >>>  	status = "okay";
> >>>  };
> >>>  
> >>> +&i2c_3 {
> >>> +	status = "okay";
> >>> +
> >>> +	touchscreen@5d {
> >>> +		compatible = "goodix,gt5688";
> >>> +		reg = <0x5d>;
> >>> +
> >>> +		interrupts-extended = <&tlmm 65 IRQ_TYPE_LEVEL_LOW>;
> >>
> >> interrupts *and* irq-gpios sounds wrong.. and I think the driver doesn't
> >> even consume the former. Trying to read through some of that, I think
> > 
> > I think you need both, take a look, there are enough users of
> > ts->gpiod_int.
> 
> I said irq-gpios was necessary, interrupts is not. The only retrieval
> happens through:
> 
> if (soc_intel_is_cht() && ts->gpio_count == 2 && ts->gpio_int_idx != -1) {
> 	irq = acpi_dev_gpio_irq_get(ACPI_COMPANION(dev), 0);
> 	if (irq > 0 && irq != ts->client->irq) {
> 		dev_warn(dev, "Overriding IRQ %d -> %d\n", ts->client->irq, irq);
> 		ts->client->irq = irq;
> 	}
> }

static int goodix_request_irq(struct goodix_ts_data *ts)
{
        if (!ts->client->irq)
                return 0;

        return devm_request_threaded_irq(&ts->client->dev, ts->client->irq,
                                         NULL, goodix_ts_irq_handler,
                                         ts->irq_flags, ts->client->name, ts);
}

I thought that i2c_client->irq is handled by the core.

> 
> Konrad

-- 
With best wishes
Dmitry

