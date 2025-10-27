Return-Path: <devicetree+bounces-231529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 897F6C0DFDF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EA71F4F3144
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:19:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 262F627FD74;
	Mon, 27 Oct 2025 13:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="By4pgJEn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A234F245022
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571151; cv=none; b=oO/yl9S9EREDJ/C5ll7C24V6CoNNdDhjvGV/8Oem0rKQtvsf9zYjq+mLu7nSn7l7sAba2WRG5NYJkZ1so0a1vbqy8AkWpfsC2leP8d0RZime58Zbjvp3PtuKjdRTyg3gsE67PNLnlvvZg3RLNVSELDByR0Hb+VkGpO+StEHrURE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571151; c=relaxed/simple;
	bh=p681Z5rbaDJF06LN/mmHiGuUx0Jh34Fe6SopBwfasw8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ms0GGWX5zoxTrQYJWu5PbHe8bgj53GuTeAR+vCtm+9KEfvqg1omorfSeNCQSRQpEyyU0Qu4FRADQeLDdLghqGYEXWX+VK8HXoOduMDL4D6pGzx/jP19r0gFl2qL6MMDPMNtFDl15Ef9xNtKMSMVVpnCteSvPBd/lTXeZlO2vwk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=By4pgJEn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R84dw22232075
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J2Uzmm4o+Wkvy02wbzWdLFd2
	fnNoKBhusnbJ+pfAWnw=; b=By4pgJEnETTbOjcnpaNXT/R2pezog73Wj9boC9dW
	SjNlmOsvywBlGsAykgQDec2HnAb60SzplAs86yk/0WPP81i7FP6ioNUx3FIud3T+
	QVeDTVfMOhbneO3Y1RNcGa0Vxuy3DSLgCfsBCQxYeBjJ9bgmhNtyXr8DX1jwp+go
	76DzORq/QLQek24arGszSgCkLlDoOxFkq6HnMuIwgMJVNoUsHEL5967NhK0QhMOz
	NEZSAPHJyQn1W6cNiu9fhtCKCoosd6qFZsnFeIJKIHJzvxazZ6AaR2koLcFe3cWz
	6HAjXqNpKolJ5d70tEitQ7HBXW4nWVGlTH4I6x9HJYA2xw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a24wn8v44-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:19:08 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5db1f7f4a36so2673274137.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:19:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571148; x=1762175948;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2Uzmm4o+Wkvy02wbzWdLFd2fnNoKBhusnbJ+pfAWnw=;
        b=SnQnOi96qkjCYyvG430hcbf5jNdvrjU24yXFQrUYixxwTiOrKWwCyURqSyyNxd1E+D
         BWUwEaOEAWy+/7ZvRQnXi6XcXnLOaQVwBpvIMNKN7f6egGASk1aFuP61nJeyTEQjaw5i
         OcjT4lvuY/Z+QVB9ogikWKe5KG0Dbc1bBeifbNhf9k4JYpTe/rWElHmigfvwdwF+Ky+z
         CgVuzhg++1hE3a0H1A+xeN/mDKovVzE5lEfmqZ8QNcxjIKjPUqLOSEBZH1E5vU1p7eN6
         qVzowcs9vQF3a9kj7MHHTLppD49xbkrp9surbDpJzLKSsTzafndAmfHiweP3cPnsprxF
         bI1A==
X-Forwarded-Encrypted: i=1; AJvYcCWbd7M+kqbWfRe3/AHTdWI37RpEbNYqIan66mP4zc5EcD8AokXGWT3RxoWLwdL/XO0h02kEAbPpn/vQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1ke8NFYLZpaA0Rsauis+sUIzKCVmHGd7pLTCTgBM1+qIwFGTo
	wFOkn1uyuKFRVlmfIsbDww3+8U+YO4fVoPkGJT+ZD4Yak1vxv0hPcx6KCTHXwM/6Yy/gi3yeBMN
	46Le0U05vKWPzSi4NyAgxri8Jyg7IiUE+ZVWheIw222N7a+q4yVW7goxqZMdO8Fce
X-Gm-Gg: ASbGncv3PoT2UkOFZ0xIIzr27zmW5o4M27SZdfkBsu7Sy3xLpali1SGNG9REqcaOlow
	yjv3U9uJloNHCns9U89Aro8hNrV4teRzo5A02dh6RC3DDvoxfIX3DQY6Z5AEHvECblPW9yGvjZy
	t96Vo4SCpIr5dzMEeVsdI6yaDZdcxpJyWaKJGyvUmgAELRY0NiYAuTV59ffuxg8/o3kHu+zg4Sh
	U7FC8CfO4ZqsCRgy/9nOazwqw37s/n/bf6KpGq8FdJe1zzq6wnglW8Qzyz6imuOyVKPm1V46+RZ
	ZtA8ZcdojXlQVCTNYnOj4QWZ84T/sE8y+3SeVHcVW/QpL6iHvgH+S3wYmKyaQQB4sj2OuxXjtAk
	h80ajBijQFOGG6GW53kcbCoWcdwmJILsX9BQHS/2UE+67u2n+7ut77yCmLmYaEC1Npiz0QKOPAh
	eMvr8rdCKEw/G4
X-Received: by 2002:a05:6102:6cc:b0:59a:79c:f277 with SMTP id ada2fe7eead31-5d7dd5af38fmr10917101137.17.1761571147667;
        Mon, 27 Oct 2025 06:19:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEvGPuBFXFMD+s+AGYLbzxQPLMqSCxh3xUpq4ZLUYKahpArKmvvv89qv7QYWkqo9JVUBMy6qQ==
X-Received: by 2002:a05:6102:6cc:b0:59a:79c:f277 with SMTP id ada2fe7eead31-5d7dd5af38fmr10917084137.17.1761571146949;
        Mon, 27 Oct 2025 06:19:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59302335036sm2326984e87.70.2025.10.27.06.19.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:19:06 -0700 (PDT)
Date: Mon, 27 Oct 2025 15:19:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Biju Das <biju.das.jz@bp.renesas.com>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/2] usb: typec: hd3ss3220: Enable VBUS based on ID
 pin state
Message-ID: <34atfkavrxtv5xdekrlhhkxx4rxs3ueclxrmou5pquym5fsycv@i7mv7ssdlm2v>
References: <20251027072741.1050177-1-krishna.kurapati@oss.qualcomm.com>
 <20251027072741.1050177-3-krishna.kurapati@oss.qualcomm.com>
 <aP8_oZlJ4466BEf0@kuha.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aP8_oZlJ4466BEf0@kuha.fi.intel.com>
X-Authority-Analysis: v=2.4 cv=XIY9iAhE c=1 sm=1 tr=0 ts=68ff714c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=l5K9N5hKnuDr3Ur03xgA:9
 a=CjuIK1q_8ugA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-GUID: A30qdyjkyYltRZh56UPI9hIuQbbwawf_
X-Proofpoint-ORIG-GUID: A30qdyjkyYltRZh56UPI9hIuQbbwawf_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEyNCBTYWx0ZWRfX+nSov1sKLfrP
 mrTl+jvj8j+ZO/8FeheYppuZGRUD1CxxJIB53PB6JA3IpaxuyVHQ+5Xklt86B8/rwYCr50Z/cn2
 7OUKrugWoQAWgedTLk7N5Xm1NexDc5pzibRCi33uK845oyz7R+CRdn/hJjg4CaGWl9eOHsOcfsx
 VGF0GeZezV5yAsEEXQQq3sD4g6E0PgZGAF34PtydoaoqD3aBQwKANg6kPH2bjAXr5wD0reNLalb
 JPyFubKXt2OmYS44xoqoC4XySZFGh+ZDMHi7AKtwt+bjKpqdZpVtL/Sh8axWIwHC+mqL/Dp8+cJ
 2U8qTcKjKA6I/2cHRnrIP1jpOUKen6pZtuT/3U6N5P5+/u5BqIwIzZ6A8z3BxHmXi4P2tKTJS8R
 cnul3+wqRq0PPP5yokqQ+YLZD9Rdzg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270124

On Mon, Oct 27, 2025 at 11:47:13AM +0200, Heikki Krogerus wrote:
> Hi Krishna,
> 
> > +static int hd3ss3220_get_vbus_supply(struct hd3ss3220 *hd3ss3220)
> > +{
> > +	struct device_node *hd3ss3220_node = hd3ss3220->dev->of_node;
> > +	struct device_node *np;
> > +
> > +	np = of_graph_get_remote_node(hd3ss3220_node, 0, 0);
> > +	if (!np) {
> > +		dev_err(hd3ss3220->dev, "failed to get device node");
> > +		return -ENODEV;
> > +	}
> 
> So I guess that's the connector node. Why can't you just place the
> regulator reference to the hd3ss3220 controller node instead of the
> connector like the port controllers do?
> 
> That would allow us to do a simple devm_regulator_get_optional() call
> that's not tied to DT only.

But we have devm_of_regulator_get_optional(), it was mentioned in the
previous email if I'm not mistaken. If we need, we should add
devm_fwnode_regulator_get(_optional).

vbus supply is described as a part of the usb-c-connector schema, so
it is not that logical to describe it as a part of the Type-C
controller.


-- 
With best wishes
Dmitry

