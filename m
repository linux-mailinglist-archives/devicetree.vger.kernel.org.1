Return-Path: <devicetree+bounces-209471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ECBB3775E
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 03:46:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1758A1B6649C
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 01:47:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6E5D1A5B8D;
	Wed, 27 Aug 2025 01:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YhLXBVe2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3060C30CDB5
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259211; cv=none; b=ZIuxbRazXksJjILB7ci2ITB6XI/PHW55wpCERxOHYIVpM8UskhUoD08qGbn0qUsxJHWSc7xCnJwmGcaSQBMniVaQbsXES8oukL63cZDeSH+SsY4+yMP5hBqlsQ+47pr9uTPUa7Ot0HamlYqMZL9JDJ9RIUR/3/jB+N0omd4lBQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259211; c=relaxed/simple;
	bh=DysN5hU3oh6u0Gix/Fw/6sES2iyVhu+TI7M9kG25Jhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OT8AIZVtzbzZdMYt4fyqchJ9W/2ediqgmjLEaItOO92O55ngZkulQPmScdLvUF3LYf2cYGFK9z9Mn7L5T1iaY0AFuxbNz2Qb2MkB4px/tvJHAs74SN9qVcyIaUKyq6XFWvsrSgA42WujbBF8pUwjktsjzF92jFJdG/lfZGBnk40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YhLXBVe2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57R0UEP2031911
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JsiI2R6ibkXEQVsd2AueMHAg
	SFh7s+WwOR/4XjgqCBY=; b=YhLXBVe21/hN247bvkvVEfLqcK+vDTHSZ3+l7oHg
	8JGWd1wBDFdGdfSnMg+1K5dO77K7KM5/jCNQ2HKXYtBUfMe0kJfS2Q40bC7ziAJq
	BIPixjMuuNJeHCo6lWz2M6QS3eEd9jMZporoVpFD6Q/EJdm3U9dpsruRlwifmUp8
	qI9qpuLjfR9B3hrjJmeRj45bK9amnphtBZWVb5vMq/OmR+WN95F5ddhKYDBKE47w
	mVkZx6MCLHIe4AKxVUW7Hosss0P6q5kZYunS8vlKsDuR7TJCcAyKGmDDc9bA4TFz
	IDSeYpUzYnaB55SqKrdwv+9s8DecfFR6f2ULXQVhOamtTA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16syjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b0fa8190d4so14378631cf.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:46:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259206; x=1756864006;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JsiI2R6ibkXEQVsd2AueMHAgSFh7s+WwOR/4XjgqCBY=;
        b=wBkaKvtMF+a+y1l+FXwyanEzUy+IO2fKqZgkBdZ4h+5AoXRnZPW+Q6WQ49IHKpsuVL
         HSnBHrAZEP7oQHEVWV18OmPtzQcmMW/sqKbQiLK33ECYT/yL4CVyFOoa4I4sh6x/pme+
         r6gJpWPzWqdMWz0pf/w2XgoVUvcGbGX9fPpIDUez7vvUtR3HeHigl9ScL/8DayYqNrrW
         t1EyyhaexuiAaSmtn8dew+PWQyex8xFaUDDLq0goXfIL090so483kGZvGjTcXllWckZ4
         dYPxYq9bvK4INt5ijEZyBRiBMAFhSTiSAyFUJPdXbFgb3DhvGZ1Ja5pDGGuz74HBWl9L
         U/zQ==
X-Forwarded-Encrypted: i=1; AJvYcCX90g2vdVhJmaFFCeyvV0jT9vLFzu0gQy3R6kDvbMajknS+tmZYlV5Mc2175YB4wXQQ+73hRxLQlQEp@vger.kernel.org
X-Gm-Message-State: AOJu0YwzjdyQdxLXxs8B2741DXPk654c2/hpzHRMbADvg/YpU3tsWNIa
	/P34tq/2OCfYeNgduZOiufU0UjiTp6nvsgjLcWjy8n6KnmF4g2tYRKGK/VwcvgMlRNm/lnt4fDl
	ZJMHf2DHajuPkZV2bR4gM/c9+At2t+BvRutCMLHgNiZSNaIVntuWjiXQ1qAXF2GP0
X-Gm-Gg: ASbGnctSwa2acZ+9mDcClw99gmcjQxChB7OXDPktCp7OEXA1c9Q0V0glL9hQW5WBWBv
	hJdBOnZldlQrmqRu7MGGsCbfb98mjfr9IUoa79Jroe1rIvgB3WuXR+870hEQ0XWPW7+vgDFoNDa
	5LxMZ4v0OeDLIDYO2Luadb8Nw1lMHB5BkW2wn2i9rcPCIs9tEhMF8zU8+XCkFePppmoUoFdznvE
	NnPq6+6m1T3vfsrk2/ba9LEZwqXGMTro5YRcIMti5dAnZ34fEucMJeefknEK6EvVkfDkLF7+fjG
	Xwjf0EIv9XiQOywRUnXaZfaAwTJBMKJe+8ap3GYZj2rviYG6siejkyOu2WKB87rY+H6BN1mHGfC
	apGI6J32beLwkNK3NYwdNEFILP6lwgp/QUrX5q84GsZSp4dbyp3aV
X-Received: by 2002:a05:622a:24e:b0:4b2:a9bd:5e0 with SMTP id d75a77b69052e-4b2e76f7172mr37630681cf.4.1756259206170;
        Tue, 26 Aug 2025 18:46:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFlmTK2otsgLWy8SWBZn84jmif93f/VKR3VjTdwWA6dS24L2uPT70Q5mJ3bV7NaE5n3CnyiUw==
X-Received: by 2002:a05:622a:24e:b0:4b2:a9bd:5e0 with SMTP id d75a77b69052e-4b2e76f7172mr37630501cf.4.1756259205704;
        Tue, 26 Aug 2025 18:46:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35c8bad5sm2541712e87.83.2025.08.26.18.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:46:44 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:46:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: setotau@yandex.ru
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Richard Acayan <mailingradian@gmail.com>
Subject: Re: [PATCH v3 3/3] pinctrl: qcom: Add SDM660 LPASS LPI TLMM
Message-ID: <nr4ipnjds43cheo5af6orylrdn6an2qxmdu6cloldn4qd6vsnc@kidtkadei24y>
References: <20250825-sdm660-lpass-lpi-v3-0-65d4a4db298e@yandex.ru>
 <20250825-sdm660-lpass-lpi-v3-3-65d4a4db298e@yandex.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250825-sdm660-lpass-lpi-v3-3-65d4a4db298e@yandex.ru>
X-Proofpoint-GUID: 52WMp47e6r6vRpJV3gaA4y1fxScOAl1g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX1bzPDQ5V065G
 eiZ1t7SrrPB+1Giwzp4Ay8sngsyBGWZ653ms0BxChbTnuLD/9sZmi7z2iwWg2rXFGWmmZvNw2Qw
 sfZdZdHCc0XWwl/IFl4fu2uh+4FIjKLQs/xTN2A1CwJyr9W61QdZMjTbDZHkDL22PnopyOaj9gt
 GIqIEpcJCAi4DYOtjXZaShHds3EasHt96PGn6W00hWte/LKABl4gB0Zm+F1hvfUmVRmWUY66k+E
 dhWTza6OxxWQb7+zinsWpk5z9j6ZnBqKyEI2FsGmS3nSDsE2K4qH5Nn4+cf8r5OZo3E0dNr6lto
 owNl2WR019Q3oHuesQ8xZDcfu9f69ndt4jvEt6C8/v5NAPRw48FKJHJ+/2I1018WHEvfHRDcgsX
 gYKNBWQV
X-Proofpoint-ORIG-GUID: 52WMp47e6r6vRpJV3gaA4y1fxScOAl1g
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68ae6387 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=qC_FGOx9AAAA:8 a=pGLkceISAAAA:8 a=vaJtXVxTAAAA:8
 a=EUspDBNiAAAA:8 a=waXtKuJNql4FBI_f4L0A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120

On Mon, Aug 25, 2025 at 03:32:30PM +0300, Nickolay Goppen via B4 Relay wrote:
> From: Richard Acayan <mailingradian@gmail.com>
> 
> The Snapdragon 660 has a Low-Power Island (LPI) TLMM for configuring
> pins related to audio. Add the driver for this.
> Also, this driver uses it's own quirky pin_offset function like downstream
> driver does [1].
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Co-developed-by: Nickolay Goppen <setotau@yandex.ru>
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> ---
>  drivers/pinctrl/qcom/Kconfig                    |  10 ++
>  drivers/pinctrl/qcom/Makefile                   |   1 +
>  drivers/pinctrl/qcom/pinctrl-sdm660-lpass-lpi.c | 196 ++++++++++++++++++++++++
>  3 files changed, 207 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

