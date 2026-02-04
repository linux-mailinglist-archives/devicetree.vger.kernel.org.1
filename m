Return-Path: <devicetree+bounces-262492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLPWIva1gmnwYgMAu9opvQ
	(envelope-from <devicetree+bounces-262492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:59:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDDCE1134
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:59:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2566830F562E
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B41D22DC767;
	Wed,  4 Feb 2026 02:58:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FKRO9h/h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K7hkLJGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF412D9484
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:58:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173895; cv=none; b=DTPuagZbFKeXA9xdhW7PjjN/fa0F9rcN/HmOWiEudjnI9XTgmJrxlVaIsFcsluaIpduZD5aK+TuyCwfhyE1xJwr4UR5rBlgaOXEuASc4NJ7O1uC5DdtR8OeHhgfr7++Op0gleRV595dUMlE1eY4AB2nnDgHWotXOKGql8HBMEgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173895; c=relaxed/simple;
	bh=AumVuVbgDpnoSvswyJFwXV95PJIIi2n+TshMqTrirLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BQp2L4Gnwrbx3p20XUmyw0SBNxfg8017CuvHtqbLtU0O683p2iO6WLZDkJlRar/a4lNr8umRyU6Thp/chjlzEqKpOhb6qmgPkOLdrkLwqgP4E0gr7eHgYmI4qqSb6xZ4fg69uEWY3hcmwsMUeMlBH2LBI+jmRWQT+wP+ua3lGxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FKRO9h/h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K7hkLJGg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ili6F2962788
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:58:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dgPy6tDsxzH2slVfF/abU1NgIxGS043cCt/w2ORJFn4=; b=FKRO9h/hSU16udtD
	jiJ0YNZdeG8oxcST29yKT/Ihvk0gDcXIiJagDx4gcd1Ha3K1R3ztabZ/9RXo/Nxk
	B3PP4dMeMnf2tx7RH4OLLhvv+heRqiqz+XE6LhMCzL/Gl1MnjbyPpD7In1MyeGO6
	Xi90ETtmJH8aCW2JQgdVOu1I/5mqAu+h6pzKJMpy3BAbXYG0q8xnqcZL8mxue/fC
	kKdEej1C2QW1VvCCDEz55rJ1YwRjnMV16sDTFdD/w1GEOABnHh9/7tpVhAXOWgBm
	8WDg0CiMUSC1IVAat6ARIOlT4UTucR02tfbX/E6VpUQ4OEHEa6OvrmdBHeO9WNZZ
	YNuaSA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ne7snre-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:58:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c71304beb4so1454789785a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:58:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770173892; x=1770778692; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dgPy6tDsxzH2slVfF/abU1NgIxGS043cCt/w2ORJFn4=;
        b=K7hkLJGgMocT1BKMg0C1luOmH8HhmlYE6uV/buKmCN1gH5NBE/dDGO8xmNlknn8WO3
         ea2o1uRyL98nSb0vucABLR1JF6eIbiR/pa3PjS4XhYWfMCuFY0fR2a7o9qJ60J9SoDnN
         EY3SobmlDQyUj5BhI6+/4a9cryCyw9TYAd/pobDETwA5HrRVmiquUcivjwgaXoFQuz4F
         M3TQM7NZuGBV3rsakuuKfQLmRcQp+p7e+vMjJvFAIZ/YXVngQWjYjAz/BAxK8ECjtDzE
         JCcBYjYoiM+U4aglApAAXSCnXDiV0wbjhHA4jswG3nm1QLRwaU9YfbticZaelkBJYZlI
         LD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770173892; x=1770778692;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dgPy6tDsxzH2slVfF/abU1NgIxGS043cCt/w2ORJFn4=;
        b=uo+q2p5DodZltXpAWBg8Atw4ls2LuK2VLWRfWWZ9rzu12mPqUjYZLOWhBSlR4cYr/I
         N7Csaz1HJN6AE9fnY4FHStrMLkZuADa9OBSXFGnKnUeGg2QyBMqq41KlVXoGysFcbxz/
         aTWPrrMiGu0VtmbhfLhMZoSkeorbCIxFtUiDDog4qACZR1vqeC70Up8Sd9yRZywjO2C0
         zmWs8kCdZ0WAafDN16BFyyX+inQwkL6Qe322Hm7hyys2yl7AC7hL4SrOF87/UFUeT8jC
         cH95baxHNxuy13pB3T8c78KrrTWgrMdWuA6z3aKCB9PJqnm0ZLCFK7cklNkdWIkVjbch
         N0Sw==
X-Forwarded-Encrypted: i=1; AJvYcCVL1ykqJB+fDXoHFGrDiFb7sBByR9j+VZoJg9NI399qai3lV0BOdoi3xSWXJez+941K9MMpqIpyK1sZ@vger.kernel.org
X-Gm-Message-State: AOJu0YzWmwPZClmkQDm8LajjdFXpTYnFbPm69UeRq/nw7TEth29KNdCV
	m9Leuo1J9FXrg4Z/4f8o+cPJvprgRzDmQ9e1vqEhqOt8SxtlaUhT2o0Ra0Y6tFSp1FP7l/HlUzS
	oFentPdqlyXlHNVfFCAACzmCLgLPTqKhF+AF+2j62ywl48rG0i2KE7Dxyjlmnl8si
X-Gm-Gg: AZuq6aIzcuv/gq8kV/2phr2cI3XOUeuPp39+ipDiYiYWN3xwwaCKrhOAs1Y0wZ53dNB
	l2JVXLcIJuQeq9AxnX4VtEq9YRbCzyOB6NdV5pHL8i7P3QbjzJoaYP7gs+U2D/21ekpT5LeiTmS
	RpWDOBCM+YHSrsvh8g1gX77JlUlWKUhRhwNj//8z3dLWCREg0SQXLsS1pCQIkRDrhkfSvI2OFs9
	rHQkcT6U29A9B2ZSqJqHh0nzGMcsN7PwDHr/yEl9KanE6LSp4RN+oA+OgkNixI/UE7iogW+E1Jn
	Q4CrtS1YvzQxswkWSyJ9QkGAz3WflPZnOSoqH0i7QIg1cHjHM3OlKrqXuI1Oa0EFlPdAYBUFX6w
	wwA6g2ZtXKvHgsmzOU4UCnoX0XQZ0KIL5LsB1H8I0I0t8Sn//kkAjWHYVpIZQ3hVvIKR6stHVIN
	04zSXXr5KIsJpvPFUVx7008Tw=
X-Received: by 2002:a05:620a:3729:b0:8c6:b45b:9e2e with SMTP id af79cd13be357-8ca2f875cb1mr238385385a.38.1770173891964;
        Tue, 03 Feb 2026 18:58:11 -0800 (PST)
X-Received: by 2002:a05:620a:3729:b0:8c6:b45b:9e2e with SMTP id af79cd13be357-8ca2f875cb1mr238383985a.38.1770173891508;
        Tue, 03 Feb 2026 18:58:11 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e3881b092sm303686e87.66.2026.02.03.18.58.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:58:09 -0800 (PST)
Date: Wed, 4 Feb 2026 04:58:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: Jie Gan <jie.gan@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <tvqu2yzmx2ctdrrn24vkrebc6sw2352wej24yuufy4cncrh3jv@rgggoufxwymn>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-4-tessolveupstream@gmail.com>
 <5102252a-0f50-4ee9-97b4-a90859a33b2b@oss.qualcomm.com>
 <128a5f86-dd3f-4e5e-a55f-3c8b5993779b@gmail.com>
 <5c5oalpne2xedc42yomtur3lo7vvdyncgs7yd46xw4nvi6pzbd@vcjz3wsyjd3c>
 <2c59e43f-aee1-4ddb-88dc-1bbf6287c926@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2c59e43f-aee1-4ddb-88dc-1bbf6287c926@gmail.com>
X-Proofpoint-ORIG-GUID: IR0kKChzgFQlmMJg4JJ7yevnzihFBMj_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxOCBTYWx0ZWRfX0pAK2FQnIlq4
 xDbgH016mpNSt2eUZbrloMkSlbG2xh0TSVAi8GhY2tnHO1Q3eyBR5cLjWMQMRA3B9zyu6BCQnQv
 eD1Gis2CgUO0Wb2PUFiOs2/T9rWwL0yFkXh+gx6b4X++b3fn5QbUymjdZ0VVEvnOp6uCbzZ+Pt9
 Ei3AUZme7iuMz7/ilZZn6jn26EyYpKgAibRykD9SYY6ogkZA762hIoAj+JMR7HBjYX/LwpJrobl
 zOutWgX+ICwN8qg+HZAqdBmbqG+FGbecNzRgylVNfSMmPeFSIK9Y/v9UVHouA4xuO7Zt9/hVCTX
 EHiGNYBb9K3JPyrw0MlduW/yoj4O1+qF7TxU1hbjer5QYHR+2XS/0JK6xQQNruSq+JlQPch6LZ0
 IYGg2au+J9LccjVGh7SthSBJU1Vd5zOIleLbq9NVUx2rgAYpJ+cINQ0q5gVlH3qw1RXjhCOBzMF
 zwshklXes29cb1SGN3w==
X-Authority-Analysis: v=2.4 cv=TZmbdBQh c=1 sm=1 tr=0 ts=6982b5c5 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=VO7DvBNVjnxE6GzD4tkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: IR0kKChzgFQlmMJg4JJ7yevnzihFBMj_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 clxscore=1015 spamscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602040018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262492-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EDDDCE1134
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 02:41:25PM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 16-01-2026 13:24, Dmitry Baryshkov wrote:
> > On Fri, Jan 16, 2026 at 11:25:50AM +0530, tessolveupstream@gmail.com wrote:
> >>
> >>
> >> On 15-01-2026 07:54, Jie Gan wrote:
> >>>
> >>>
> >>> On 1/14/2026 6:00 PM, Sudarshan Shetty wrote:
> >>>> Add the device tree for the QCS615-based Talos EVK platform. The
> >>>> platform is composed of a System-on-Module following the SMARC
> >>>> standard, and a Carrier Board.
> >>>>
> >>>> The Carrier Board supports several display configurations, HDMI and
> >>>> LVDS. Both configurations use the same base hardware, with the display
> >>>> selection controlled by a DIP switch.
> >>>>
> >>>> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> >>>> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> >>>> can describe the HDMI display configurations.
> >>>>
> >>>> The initial device tree includes support for:
> >>>> - CPU and memory
> >>>> - UART
> >>>> - GPIOs
> >>>> - Regulators
> >>>> - PMIC
> >>>> - Early console
> >>>> - AT24MAC602 EEPROM
> >>>> - MCP2515 SPI to CAN
> >>>> - ADV7535 DSI-to-HDMI bridge
> >>>> - DisplayPort interface
> >>>> - SN65DSI84ZXHR DSI-to-LVDS bridge
> >>>> - Wi-Fi/BT
> >>>>
> > 
> >>>> +
> >>>> +&usb_1 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_1_dwc3 {
> >>>> +    dr_mode = "host";
> >>>> +};
> >>>> +
> >>>> +&usb_hsphy_1 {
> >>>> +    vdd-supply = <&vreg_l5a>;
> >>>> +    vdda-pll-supply = <&vreg_l12a>;
> >>>> +    vdda-phy-dpdm-supply = <&vreg_l13a>;
> >>>> +
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_2 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&usb_2_dwc3 {
> >>>> +    dr_mode = "host";
> >>>> +};
> >>>
> >>> Both usb devices have been configured to host mode, do we need adb?
> >>> The adb only work with usb peripheral mode.
> >>>
> >>
> >> This topic was discussed previously, and the fix was implemented 
> >> based on that discussion.
> >> For reference, I’m sharing the earlier communication in the 
> >> links below.
> >>
> >> https://lore.kernel.org/all/qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr/T/#meaa464a4e6992b36b5d8d41ddc691ee4ea36b1ce
> >>
> >> https://lore.kernel.org/all/20251014120223.1914790-1-tessolveupstream@gmail.com/T/#t
> > 
> > Neither of these links is relevant to the question.
> > 
> 
> In our hardware design, the USB0 controller is a USB 3.0-capable 
> controller whose high‑speed (HS) differential lines are routed through 
> a mechanical switch.
> 
> a) During EDL (flashing) mode:
>    The HS lines are explicitly routed to the Micro‑USB port. 
>    This allows the SoC to enter "device mode" for firmware flashing.
> 
> b) After EDL completes (normal operation):
>    The mechanical switch is driven to route the HS signals to the on‑
>    board USB 3.0 hub.
>    The hub connects to four Type-A ports, all designed for host mode 
>    only.
>    The Micro-USB connector is now electrically disconnected.
> 
> Why host-only mode: Once the switch routes to the hub, there's no 
> electrical path back to the Micro-USB port. The USB controller can 
> only talk to the hub and its downstream Type-A ports, which are wired 
> for host mode only. Device mode is physically impossible in this 
> configuration.
> Therefore, USB0 must be configured as host-only in the device tree, 
> since device mode cannot work after the system boots.
>  
> The USB1 controller supports USB 2.0 and has its data lines directly 
> routed to a Type-A connector. This hardware design restricts the 
> controller to host-only operation, preventing any peripheral/device 
> mode functionality.

Please add a comment regarding EDL-mode DIP switch and describe the
onboard HUB in the DT. Additionally consider adding the USB-peripheral
overlay, corresponding to the EDL-mode configuration as some labs will
not trigger the DIP switch at runtime and settle with the
peripheral-only setting for the USB controller.

-- 
With best wishes
Dmitry

