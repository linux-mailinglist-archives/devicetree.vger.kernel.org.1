Return-Path: <devicetree+bounces-10047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9987CF77C
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:52:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6BB6CB20D89
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9363A1DFC6;
	Thu, 19 Oct 2023 11:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="Tomy9l/K"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C00D168BE
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:52:00 +0000 (UTC)
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAB4E186
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:51:55 -0700 (PDT)
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20231019115153epoutp01a5762b66e6063868823898224bba0982~Pf-4g-zMo1200912009epoutp01W
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:51:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20231019115153epoutp01a5762b66e6063868823898224bba0982~Pf-4g-zMo1200912009epoutp01W
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1697716314;
	bh=SVGW7QHIlwa5TULeQ7Mf1zBfInhhB9FdTC6QpS5e63g=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Tomy9l/K8hp/qEAOhsAax86d0OhNvFF6C1xyOErYVjVSHiVOKnPNNP3XCQfo0Z5E5
	 K4FJavYiF9TTRLg+WuulMMFrULqSKxPA3qHWvUuVruTLu8hXIB2+IJPmD/FSJ55sSk
	 cxMkXcquBWiL/iyM7ZNc/o/vvrsEJFo1OHhIw4TU=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas1p1.samsung.com (KnoxPortal) with ESMTP id
	20231019115153epcas1p1fee86a96239df7edebfc7cef53d761ff~Pf-35Z7Te0065600656epcas1p1R;
	Thu, 19 Oct 2023 11:51:53 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.36.144]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4SB5fc2sJlz4x9Ps; Thu, 19 Oct
	2023 11:51:52 +0000 (GMT)
Received: from epcas1p1.samsung.com ( [182.195.41.45]) by
	epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	E1.2E.09739.85811356; Thu, 19 Oct 2023 20:51:52 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
	20231019115151epcas1p4042233c1498aed04c49a0a9f540e8473~Pf-133QQ22290422904epcas1p4X;
	Thu, 19 Oct 2023 11:51:51 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20231019115151epsmtrp11dc727f6b3817388d1e85d8afd629373~Pf-126yLy1810718107epsmtrp1j;
	Thu, 19 Oct 2023 11:51:51 +0000 (GMT)
X-AuditID: b6c32a37-e67fa7000000260b-62-65311858f028
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	D2.68.18939.65811356; Thu, 19 Oct 2023 20:51:51 +0900 (KST)
Received: from cw00choi03 (unknown [10.113.111.106]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20231019115150epsmtip2b501df77bf12f909d8e048ac4d1457bf~Pf-1jAInr2789127891epsmtip2H;
	Thu, 19 Oct 2023 11:51:50 +0000 (GMT)
From: "Chanwoo Choi" <cw00.choi@samsung.com>
To: "'Sascha Hauer'" <s.hauer@pengutronix.de>,
	<linux-rockchip@lists.infradead.org>
Cc: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-pm@vger.kernel.org>, "'Heiko Stuebner'" <heiko@sntech.de>, "'Chanwoo
 Choi'" <chanwoo@kernel.org>, "'Kyungmin Park'" <kyungmin.park@samsung.com>,
	"'MyungJoo	Ham'" <myungjoo.ham@samsung.com>, "'Will Deacon'"
	<will@kernel.org>, "'Mark Rutland'" <mark.rutland@arm.com>,
	<kernel@pengutronix.de>, "'Michael Riesch'" <michael.riesch@wolfvision.net>,
	"'Robin Murphy'" <robin.murphy@arm.com>, "'Vincent Legoll'"
	<vincent.legoll@gmail.com>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>, "'Conor
	Dooley'" <conor+dt@kernel.org>, <devicetree@vger.kernel.org>, "'Sebastian
	Reichel'" <sebastian.reichel@collabora.com>
In-Reply-To: <20231018061714.3553817-12-s.hauer@pengutronix.de>
Subject: RE: [PATCH v8 11/26] PM / devfreq: rockchip-dfi: Handle LPDDR2
 correctly
Date: Thu, 19 Oct 2023 20:51:50 +0900
Message-ID: <001501da0282$a5b7a150$f126e3f0$@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQFYMiMsP3soeW2GlDsie1R9CxInBwHu2sMhAiSO6sexNAWh4A==
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUxTVxj29PbetpjOuxbhyCKrdzqHA2wtxYMTZ4TAXTSODVyIxHSF3hQE
	2qa3OKc/xNHxpVAJE11B0A0dMgiOulG+RCoORgIJ0QEbNAGKxo6PGVADIYRR7ub49zxP3ue8
	7/Oec4SYZI4IEKbpzYxJr8mgCB/+Lw+CQkISoYKR/9onRSXDj/morr2fh6q6+nG0MjGFo9rL
	zXxU/GwcQ31fTQtQo3sQR49aKgg0X9QF0NzYCoZuDg3wUOeN7WjkfA2Bvm7vEqDO55M4Wm5q
	5CPX1FHUXf+UQJZR1UFfuq6yDtAOVzWgm20uAd1YW0DQo4NtBG2vPkdbl+V08d1aQDcNVmL0
	fGMgXbXkBnEbj6fvT2U0WsYkY/QpBm2aXhdJHY5XR6lV4XJFiCIC7aVkek0mE0lFH4kLiUnL
	WA1IyU5pMrJWpTgNy1K7D+w3GbLMjCzVwJojKcaozTCqjKGsJpPN0utC9Yx5n0Iu36NaLfw8
	PbXmoUVgdPqd7n/oIbJBibQQiISQDIOutkugEPgIJaQDQPf0K5wjcwD2Fjn4r4kndwkrBMI1
	S//oYU5vBvC7XhvBEQ+Ay1eW14oIMhheXzjmbeFLHoPWHgfPizHyFQ6fr3zkxSLyQ1hRWbmm
	S8l4mFfYIvBiPrkDDrl/wL1YTEbAH3uWCQ6/CX/7dpLPnfM2bJqpwLgIMrj45BbO6b6wvCAX
	4/oegot3+nje2SBZLoIzE3dwzhANh18843NYCv/qvivgcAD0WHMFnKEUwIGpKYwjDQD+dNvy
	bzsl7LhZyvOmxMgg2NCym5O3weala4Cb4g04+/Iizm1LDPNzJVzJO/DRmIvH4S3w+7wC4hKg
	bOuy2dZls63LY/u/2XXArwV+jJHN1DGswqh8fdsphsxGsPb4d+11gLKZ56FOwBMCJ4BCjPIV
	76DljESs1Xx5hjEZ1KasDIZ1AtXqtkuwgM0phtXfozerFWER8rDwPcowpAhXUP7iP58WaSWk
	TmNm0hnGyJj+8/GEooBs3sfOnAT3cL6uItjTm5D86UINoY6q8fc7e0V8ckzaMFB+sXOqNPL9
	adffEX9kXY4l2lpPj3WnbY3+WZxY/8nOBvu1GGvL5NJ74+ahx8aXsx3uF0GBVp/tUUp9+2Yl
	GJk8Xv/u4oZYy6EFUnv1XGrYXLihJhF5RJvIlqtJFw6IThS03qOSP1M3iWZVvPmGnKMb5p1H
	tlokuP/9+yEO3r2Os01j1oLf/RxzbwXf9nliGTr/xYMt5KaJMtZedSPU3h55snja354jayvN
	by2rmvkmpidpn1RyoX7cpo4H8Umh49nlFmWybuOMPnfk1MFb1SfyhmPtOwPzzxAfJIympNFW
	ezPFZ1M1il2YidX8A12pbxCFBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGIsWRmVeSWpSXmKPExsWy7bCSvG64hGGqwcNlTBYTb1xhsViz9xyT
	xfwj51gt/j96zWqxaupOFou+Fw+ZLc42vWG32PT4GqvF5V1z2Cw+9x5htPj04D+zxdLrF5ks
	Di5UsbjduILNonXvEXaLgx+esFr83b6JxeLuaz+L42ufsVm03DF1EPFYM28No8eOu0sYPXbO
	usvusWlVJ5vHnWt72Dw2L6n36P9r4NG3ZRWjx/Zr85g9Pm+S85j/+zFjAHcUl01Kak5mWWqR
	vl0CV8aKoy3sBYfEKs4dfcnWwDhRuIuRg0NCwETi3B3vLkYuDiGB7YwS825/YOli5ASKS0pM
	u3iUGaJGWOLw4WKImueMEm2rJ7KBxNkEdCQW/AgFKRcRCJXoP7GDCaSGWaCFTWLXss9sEA2H
	GCWeN58HG8opYC8xZ948JhBbWCBQ4v/ZtewgNouAqsT1x8tZQWxeAUuJ1Sf+skHYghInZz5h
	AVnGLKAn0baRESTMLCAvsf3tHGaIOxUkfj5dxgoRF5GY3dnGDHGQk8TPDWeZJjAKz0IyaRbC
	pFlIJs1C0r2AkWUVo2hqQXFuem5ygaFecWJucWleul5yfu4mRnDUawXtYFy2/q/eIUYmDkag
	9ziYlUR4VT0MUoV4UxIrq1KL8uOLSnNSiw8xSnOwKInzKud0pggJpCeWpGanphakFsFkmTg4
	pRqYJnNMUb71JnvaWY8uzc4wDdtS9ed24YWvrfLehjPLnlogYyZ8csWb6SIffao21t5QmPTs
	6Z4YMe0MB+Ovu3If3w/dyvfVbYW58lW2vvxrM36VTHnfpL+s7/C07cZq595d2xDsW2d146Dv
	/cw9OXcdFn8+GjW197Zld5S2YffTrskX0ucvnPPXJXFhe0HYFMdN3Mu2MHvVPwgOl1BMV6xQ
	52rbr5x/uTdrj/rTqPfMCjcmqh3IiHR5JWe32DOScZFAYi5LSZDzpTQTwaX3lrV7+Lzh9VzF
	Fbs/OPNeqOt2tprHT6vzvCwuVc2Nfr3QRsWw6mdkUCnTq3N/FG/LlnGsil7RK3lVb6vBkaTp
	hoFKLMUZiYZazEXFiQBYMjzUaQMAAA==
X-CMS-MailID: 20231019115151epcas1p4042233c1498aed04c49a0a9f540e8473
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20231018063705epcas1p296a5a044b8b4e2e9c457c2602ce10b0b
References: <20231018061714.3553817-1-s.hauer@pengutronix.de>
	<CGME20231018063705epcas1p296a5a044b8b4e2e9c457c2602ce10b0b@epcas1p2.samsung.com>
	<20231018061714.3553817-12-s.hauer@pengutronix.de>



> -----Original Message-----
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Sent: Wednesday, October 18, 2023 3:17 PM
> To: linux-rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> linux-pm@vger.kernel.org; Heiko Stuebner <heiko@sntech.de>; Chanwoo Choi
> <chanwoo@kernel.org>; Kyungmin Park <kyungmin.park@samsung.com>; MyungJoo
> Ham <myungjoo.ham@samsung.com>; Will Deacon <will@kernel.org>; Mark
> Rutland <mark.rutland@arm.com>; kernel@pengutronix.de; Michael Riesch
> <michael.riesch@wolfvision.net>; Robin Murphy <robin.murphy@arm.com>;
> Vincent Legoll <vincent.legoll@gmail.com>; Rob Herring
> <robh+dt@kernel.org>; Krzysztof Kozlowski
> <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley <conor+dt@kernel.org>;
> devicetree@vger.kernel.org; Sebastian Reichel
> <sebastian.reichel@collabora.com>; Sascha Hauer <s.hauer@pengutronix.de>;
> Jonathan Cameron <Jonathan.Cameron@huawei.com>; Chanwoo Choi
> <cw00.choi@samsung.com>
> Subject: [PATCH v8 11/26] PM / devfreq: rockchip-dfi: Handle LPDDR2
> correctly
> 
> According to the downstream driver the DDRMON_CTRL_LPDDR23 bit must be set
> for both LPDDR2 and LPDDR3. Add the missing LPDDR2 case and while at it
> turn the if/else if/else into switch/case which makes it easier to read.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/devfreq/event/rockchip-dfi.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/devfreq/event/rockchip-dfi.c
> b/drivers/devfreq/event/rockchip-dfi.c
> index 571d72d1abd1c..8ce0191552ef1 100644
> --- a/drivers/devfreq/event/rockchip-dfi.c
> +++ b/drivers/devfreq/event/rockchip-dfi.c
> @@ -83,12 +83,19 @@ static void rockchip_dfi_start_hardware_counter(struct
> devfreq_event_dev *edev)
>  		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
> 
>  	/* set ddr type to dfi */
> -	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> +	switch (dfi->ddr_type) {
> +	case ROCKCHIP_DDRTYPE_LPDDR2:
> +	case ROCKCHIP_DDRTYPE_LPDDR3:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23,
> DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> -	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> +		break;
> +	case ROCKCHIP_DDRTYPE_LPDDR4:
>  		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4,
> DDRMON_CTRL_DDR_TYPE_MASK),
>  			       dfi_regs + DDRMON_CTRL);
> +		break;
> +	default:
> +		break;
> +	}
> 
>  	/* enable count, use software mode */
>  	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_SOFTWARE_EN,
> DDRMON_CTRL_SOFTWARE_EN),
> --
> 2.39.2


Applied it. Thanks

Best Regards,
Chanwoo Choi


