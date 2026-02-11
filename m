Return-Path: <devicetree+bounces-264711-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aPV/EwBUjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264711-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:03:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFBB123201
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:03:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA7B23084636
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 778FA366DB8;
	Wed, 11 Feb 2026 10:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LcpWnrAS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AWtM6CXj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D969235028E
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804134; cv=none; b=HiQRAC5IqwAsWFCMI2xhRU2/9DHPAU+BUUJv/ynPZiem3fJDkMMilyF0D/SBGZH8O9Ht4Kd93ibaKo5Oh0YAToF1fPhWor7QTl7jMlaOrpfov1JORh5us1hA9Ra3LFcaTI4LrIHSxFr0eOExdrFod+3O5UXPh+ynsoSjnRRwkiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804134; c=relaxed/simple;
	bh=T72wuyPj1r6O5cCFPZ3QgK3AagwmM6jBQS7cfFgmDqE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y8cSmBJGEjOJbYnTs/IXPOdtydMSxseUBtB2GQCKJ1XhZT0xh/C9ApPArhqBKhBbOVFibFywIfYF1shOjRJA4uGNWdleaqCZT2D8cx/7TUfHzlP4juBOqO5mTHMk7W1cp4gsEe1cTZgBolQl7QmTlUJVPW+Luwco/AabZdcJkb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LcpWnrAS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AWtM6CXj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B2JOjh4127311
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:02:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nchpKVdYOXJD7jz73jWfX5Pi
	9SWnLk3tj6catvmsON0=; b=LcpWnrASbCMrGAblunNtuo0nExW4QrsPV1wvIXVQ
	YzPai8UCNNwRzT6MZuvxjLjvh2O0uOquduFrqyo1dey4rrjcUMKFLgl9ZxHfU0cv
	/DTOniWyuv7OQ/ZBqxH4Zz/R7y3O73Qp+TkitV6azeFQOLLssNibQRJ6PSkfgZlt
	xaQ7MF5mL0IEl1vhFsTNVENfc6yI8GAYWf/vci+ys2p2acUADB2oZv25aQMhqxPi
	zTRX9tMeId5yIn7n7C87+iJ/XbX/RtKYPSSIv/xIokJucGPe6w/rMq3XYs+zDYrx
	X6jBcSFoslQhAT1AqR/h2nVOCgdj6kondxSlsyh5JLlvGw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8gvm18qy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:02:11 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70cff1da5so1644876885a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770804130; x=1771408930; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nchpKVdYOXJD7jz73jWfX5Pi9SWnLk3tj6catvmsON0=;
        b=AWtM6CXjNHq1lgKpdM+OZ5T/XB+MqLzRV0HLgj8utJ0W6+W7mIROrY9pKT6rB4IHwQ
         0sExMyIVIP0T0uo4MVDZEJpQ5xs/kbDvus3Y50JhSaVfMpot1wv+Qrdm9IerIm+uH+gw
         2/JYdXJ7JJLsmWqxA1tv9m7gY4tsv7JNTIlVd5J2D5VuzBDC10HH0eMBnDUQyCCKM0eg
         y305Rw95eo8Guvi3gLm798ZHY1C641j2mlvie6bNj4OMorCsT9OL43d3SuF1DW/PZIUC
         Glaw2hQ5YLkpkIhO4C4po15GVlc3be9Kkzhlx1sJ4DJGzPYwjSy0Qptwh1ug7HtTPPE0
         BO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804130; x=1771408930;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nchpKVdYOXJD7jz73jWfX5Pi9SWnLk3tj6catvmsON0=;
        b=RGanSOwiLeKKvjjWjF9EtQE2DgtaUDH18OyxYj/ALokilLA+M5L/2CW+7BsgcFfpHb
         pDTLx+mD9d6P421WGpGb1YITfeVRuxx0Qtwp6KgKnicJgdH1CKrBOUDrzzxf7SOs4fUg
         b60vVp1W6VVwOrMO/+Si7Bz6XE3UHP8xEHWxkolgpwNWRqlRwfKYgfBjK3HWC2hglN4G
         vr5KiBuWQyakQxlj6p/KMyDYNQlOav3YpXpN+DDJbUA8C95Tsq8Bk5SE8e9JPZpUfCVx
         O2pc8WGss6HBc3uNKwrNpmWUFdG/3ODbH4LSEiZMi727aZ/n9BbPZoRKDd4vITvdx2qM
         6TLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlBT87tmRbu1yUpwxzH4UVHkOyN7QxoWeizeUUQxjPc9A3aLqOcDjoVBBrGjeLVLuaEunaL00mDZy+@vger.kernel.org
X-Gm-Message-State: AOJu0YzMGkFY+sgos8ZhSrkN6ca8mKA/Hve6KbtBOEm5fAHayYVhZBL+
	qOqbe8jiWxGtHNjnlx3fWuIYZ/HkXfDP3iGjeFuju6LbJ7E0wBku0Eod+2RDL3sHf/tsRWJ/uhO
	n5dRarY/ELcC8nPaWD2TX7aqa76SbezgVTEkuV9BhfnZzC4rTIgjg+uhbgmoDyXme
X-Gm-Gg: AZuq6aKhpH7nGBkXMvvN20Dq075zc1QhcmA+SK1V1psQ/imhm2joJRGPSJTKYkAitpC
	ixk2UyF5hK7201//7oIM99twLxGeNq5sVvpMGDdYcJmsVMC89uqT5rbpqv4KFu6nMn4ZARWsQ73
	8vot0Hqll/qvXkbPI3nnA24F3v9av7OTa/mzlt2i70PpH0jHeNg7vjNPoI5Xble5CCTpya0iBrT
	ps6iGtqCKB2KPNyqqoHvcD/JiW4t2B6RhwG5W2ALSjHXmOwAo0aEhA4ofZE2oUGy25Bgddq6izu
	8fUBwxgWM3fPtGy7Th5pDxXDr86XhPGFOI67lN/oqh4WhVmX4hudeBSsnBHeUg9hbSO6uQqgiGw
	YJRxt4cj2jPi0frln8eKzQxJh2T7mgULYpbfXvEJe7Q6TCFA+HmMpkgVgM83iNnXzwRINxkxRH8
	BT7c3uUZa11s4WPpbr3HWqoDSimZaqelv/6mM=
X-Received: by 2002:a05:620a:1915:b0:8c9:f996:81fc with SMTP id af79cd13be357-8cb2acffb42mr110725585a.83.1770804130097;
        Wed, 11 Feb 2026 02:02:10 -0800 (PST)
X-Received: by 2002:a05:620a:1915:b0:8c9:f996:81fc with SMTP id af79cd13be357-8cb2acffb42mr110722885a.83.1770804129592;
        Wed, 11 Feb 2026 02:02:09 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56fe99sm242554e87.36.2026.02.11.02.02.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:02:08 -0800 (PST)
Date: Wed, 11 Feb 2026 12:02:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akash Kumar <akash.kumar@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs6490-rb3gen2: Enable USB2
 controller Micro-USB OTG
Message-ID: <c3on5e56hqipudpt7uyam2cples3rhadpz324zeg7nebczsglt@bxuy5jzrxjc7>
References: <20260211062923.3794476-1-akash.kumar@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211062923.3794476-1-akash.kumar@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ctiWUl4i c=1 sm=1 tr=0 ts=698c53a3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=A-Cq-KxRW6d33O8yOTwA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA4MiBTYWx0ZWRfX7Jsn+SrhO9bn
 DKSJkQEz4e4ppfEKZAYd/E4OoPNludh9XUTZjM743R34qgw3aXgana29HaEixizzpfd7UpnEYwJ
 jOz4IAtNyv5pZZ57+0fm0KmKWOQSykPFSWp/ANXQbp206Wfiyvuq/iVFpGZL9EE17NWRMgQv081
 PAfu7jqRE5ecoE1T3yJn2dzpp1sGGczV4TiZ4EKKLWL14so98JTBVJVxEkhfcOvx46TttRIOrDE
 liiaJcl81haVSEid4Lmnk7TJUs/zBuXaD5sDue31mXTNpiyhF3vahr1U9RtatAwQ4yQrifbDhyb
 cyjYlPuAZi4rG004261AGAPWrYsphgbTcTd6/H/wd8ojDwUY87imJ7mhLgEBICuDDohwWptzTF0
 Txh7XpbsrryKig4xuCOgSTqngZvbRa904J6mjKcVUrvbsKJFaAfa8xAgwSEUUq1A0t61ZEXTQ6s
 wn57uedtt1wH8XTsCDg==
X-Proofpoint-GUID: emxOnxkDJL7k41iO_DykiI88gs2epSZl
X-Proofpoint-ORIG-GUID: emxOnxkDJL7k41iO_DykiI88gs2epSZl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264711-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EEFBB123201
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 11:55:51AM +0530, Akash Kumar wrote:
> Enable the secondary USB controller (USB2) and its High-Speed PHY to
> support OTG functionality via a Micro-USB connector.
> 
> Define a dedicated 'usb2-connector' node using the 'gpio-usb-b-connector'
> compatible to handle ID and VBUS detection. Link this connector to the
> DWC3 controller via OF graph ports to satisfy schema requirements and
> enable role switching.
> 
> Specific hardware configuration:
> - ID pin: TLMM 61
> - VBUS detection: PM7325 GPIO 9
> - VBUS supply: Fixed regulator controlled by TLMM 63
> - Configure &usb_2 in OTG mode with role switching enabled.
> - Define a gpio-usb-b-connector node for Micro-USB support, mapping the
>   ID pin to TLMM 61 and VBUS detection to PM7325 GPIO 9.
> - Add the 'vdd_micro_usb_vbus' fixed regulator (controlled by TLMM 63) to
>   supply VBUS to the connector.
> - Add the 'usb2_id_detect' pinctrl state to configure GPIO 61 for ID
>   detection.
> - Enable &usb_2_hsphy and populate necessary voltage supplies (VDDA PLL,
>   VDDA 1.8V, VDDA 3.3V).
> 
> Signed-off-by: Akash Kumar <akash.kumar@oss.qualcomm.com>
> ---
> v3: Added empty line between reg and endpoint.
>     v2: https://lore.kernel.org/all/2zztcabuf4hkixj445m3iiqdsmg7jju62e3fgupb6kaqirx5lq@2mhs5hcn3p7p/

And sadly ignored the tag.

Let me repeat it:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> ---
> v2: Fixed minor comments on v1: https://lore.kernel.org/all/ad294a50-027f-4caa-a9b4-e145f709b50a@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 66 ++++++++++++++++++++
>  1 file changed, 66 insertions(+)
> 

-- 
With best wishes
Dmitry

