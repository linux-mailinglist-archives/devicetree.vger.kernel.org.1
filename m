Return-Path: <devicetree+bounces-274864-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOltKU6Cs2msXQAAu9opvQ
	(envelope-from <devicetree+bounces-274864-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:19:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF1327D090
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 04:19:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D993830A0020
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 03:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359D0345721;
	Fri, 13 Mar 2026 03:19:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WV7P26Hv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EfYyJJ13"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11697332EC1
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:19:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773371978; cv=none; b=ry9uf78BZfXMYYSJ8xi0gPFxE/H2+O1yZSSNuLDQxGBgveI3lqPkt1q6RmDtsdp5mGSkXo2XgRwSH8JglxrDg8EFR5gtY5kFEWyokpo7fimVVHsuzleKoYjVO9a1XAOjG2SjiEM18Bgjj+92JlbobTRVN5zvFrZCSkuhkwrJ5RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773371978; c=relaxed/simple;
	bh=CiC8qHOaeBNALSJh7gf/TtBW+j3ihZJAqzu0xdHcnZA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EnXA11K+49SkA8eGqYiiF8ED2SUz1mMxCTM8akH3p/9T4PqaXAT74llUxc+bfmZarvdtVQicIRZUjiMAyLC0PnaU/ZlD6W04lBIypKKv6MYUQg6BBmsYT4scKT6gv+OtPglRF8hj0lVTUlhZqKBU5ju7kFzLop4DJQhwbUZuPBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WV7P26Hv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EfYyJJ13; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D18wdf2615262
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:19:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IkdggySVelhlaYJszvwrmrsidn2lkmBIuJN6ToyHIbA=; b=WV7P26Hv8mb707hW
	RdxiRn5km7NBV05+SrCAtBFtJQAvJHVy3Y8f4vBpn+lNKf6doKjAkWvO1Iyu/GTT
	roBCRSWKQRSxhRl4htskpt1wf3ZSL5cN3iRbnqbHf80UlKtS5nw2XzhFlbriW+w3
	E4cotpGscIQGAbOSmNha0xMcuLfH3usUr5LEefJ8th4kEWuHywBk6Ck5KWB0xRO0
	YBS8kmr/901U7dRU3nY2ecHeciUlPtj4h5/eVhB/p1KR6o6J8PKIUBMi+NF8kF3I
	xdfiu4/wAxHtXvE+X/1oVHWa80SKAzM601peInQNYWyyLAhtP5UlW3BLJAOQiNCX
	J2Bcsg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cv8n7gajp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:19:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-509070bda13so156486221cf.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773371974; x=1773976774; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IkdggySVelhlaYJszvwrmrsidn2lkmBIuJN6ToyHIbA=;
        b=EfYyJJ13YKMTMEW9lqZZk0TZWXmxGu0itJjfFYNgPUSEpFGs1491m0rEiJQblDR1QE
         fVR4jU3hwf7Ww+hmzNsOvVg4Vwlue3B2RG029HflPsWKJm/1qD5DdDyqOzn2vhgvFMGA
         kcjHaXnEqLuk2ekhdFw+Om4ZsMyXZIp1pK1sUMnigUZA4nzKEXz/Ye/OvS1RPDe/Zupe
         cVk1rSkxdMKDtI9kSSxqHFhIdMHMOm44WjFnkJFAw3qO+QLD5Hcr4axJHQ+TqARTnxFo
         k3q5gYlvqTn3I818qGyMmKR98BhJHQjGLmi6TFd7cB5FHb4Pa19rbEz9Sl+1DYITxY2L
         pdkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773371974; x=1773976774;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IkdggySVelhlaYJszvwrmrsidn2lkmBIuJN6ToyHIbA=;
        b=AlwLRMsUe3fgzwXUs1+o/bCKQPrMQQV+OK94YZUcVT+WUpD2QRT1wpBHU58okCLu2u
         PDtR+ObY73uZTFgY5IQJ7yBZC/2Y1xEoN4rhaCghAJ7Vyurp9QoCWDNdO3wGhmW/QDy3
         Kc/WhBsMUWLvJUikmYxYCHmZnGKVDj38lKaYLKWCNiWsh13ISrlrcqT3xLfSIWdPk8ta
         zbizEAYqWu59IINLJFQA8mFLzvVvZaeLLD4DWf4yTE4veQRjMBJzfSwPJLcIiddUlpcO
         rUx4EnuXrP5OmShEQix11S07MrxYpLFn6cRmqYUvvRtf0ncz1/onzTri7lhMQq3dC9wu
         KgLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWdHQSY0ktpyA9nZVtJPiPIfF50kFKwFzaOUUWFZXpcBqhtnYXXaQlVmam+C86EHyykFKVbWqV6+K9@vger.kernel.org
X-Gm-Message-State: AOJu0YzV1W0A+E1potK8H4fcedufkvlywi7Pfx51lQtBRddKxzfa+X6B
	i6drdOyRqBRfc6TJzibenVLIqYQxGFv0jOdOmrK6l2ph4JJWZZMEQp4hk1KvN/IwGvmm/P1XbP/
	A+xOGuyyfBHan8G/Zx3vyOJWLAUq4Qe19XWhTVfNYAoUZi3lWZv6rzpU9aYoDFrj+
X-Gm-Gg: ATEYQzztC9FO6m2QF986A7DkWzS6VkIFT9bxoxKaXjvmygbeuEmeqZYs9r1ehmIWDJy
	0V74TKBjAS96GpIPobx4rdLScFfc5yyncL6U/seI6dY5C4a1wLfZ6CheMqyUAoRzH3htmHc+NBY
	gSxBATsBeGqUbUEy4BjfVS8QyrAbVk5FJ1LBtXpj99/1frzhXFlurmwduUZ1cjk1ZnGB6WFtO8f
	syrwa/rT4dtafBjPa4mtHrXwG07TE75iJeULlSm+8bcxAh5lHiG+1TZhIFJC9AeZHTI1h0aLxpG
	swAE/y8VTokyZoiEj9INsLGt5mWAnMPUr7Auv27ua9Z351JJg9d9WFWpi71cYgJ8fnBIQtBtvgE
	hZ311xtrrgBVs1MgOvKNRa3ZeEqr9P7GamNWAq2QvijEnapmPriymAkim1vghgaMxGwWZ3nF120
	PMQ09dmG81b9aQU2klxtzXdpmG6vTkhaGgBNs=
X-Received: by 2002:a05:622a:1915:b0:509:1260:b148 with SMTP id d75a77b69052e-509572b2ed7mr28393591cf.26.1773371974181;
        Thu, 12 Mar 2026 20:19:34 -0700 (PDT)
X-Received: by 2002:a05:622a:1915:b0:509:1260:b148 with SMTP id d75a77b69052e-509572b2ed7mr28393341cf.26.1773371973733;
        Thu, 12 Mar 2026 20:19:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156162aadsm1304869e87.43.2026.03.12.20.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 20:19:30 -0700 (PDT)
Date: Fri, 13 Mar 2026 05:19:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Teguh Sobirin <teguh@sobir.in>
Subject: Re: [PATCH v2 2/5] arm64: dts: qcom: Add AYN QCS8550 Common
Message-ID: <quybzbqxlohu6kiqmno2wzyltwejnc2vebxdgvdl3fdib7zg7u@wz3bkop7psu6>
References: <20260311-ayn-qcs8550-v2-0-e66986e0f0cb@gmail.com>
 <20260311-ayn-qcs8550-v2-2-e66986e0f0cb@gmail.com>
 <4757fd22-fe9f-4228-a0a5-11d9309549ac@packett.cool>
 <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CALHNRZ_RU+uHXfUtSO+8pKOYfBuK9jbYgqWE70WMQ=5Qz2MvvQ@mail.gmail.com>
X-Proofpoint-ORIG-GUID: azgYKqGHF8LwgSEO_iJmUFBragLeQZe-
X-Proofpoint-GUID: azgYKqGHF8LwgSEO_iJmUFBragLeQZe-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDAyNCBTYWx0ZWRfX8DzsnjwOhF28
 7xVub4JOWpAadaNk5ClLIkN7CNCIxVMxKYz80AqYmJevousPppIlEGK5h9iRiTzyC/wgrbKzbtt
 k1N3azko9Z9tbKsxDLgGC1KlbUuZYRlsYGb8cAxijiqnKjypCRTH+1aLAGD3puAdzn8AmzDE4kH
 KwgOnxwLvdRnQmLQ0OJixmozVjZQ85olunV9AY2WDnuLW/klAy91TNUuDNyyiVerzqHL3kX581p
 ykMT4vyT6TVmA7n7vF/qvcl88EgzVhTefeahxWqHueyxpz7m+d+tSBXsLu4kxGI71/ke51LP4W8
 rIr4YoJBJbr/I8tejf7smame6bGaQ+eNCCAGtRPPBgitKvfkREZKaoERIBUa/7gxjTM2qBm/YH1
 Kjz+8NxQGBVIq2W+1jGvJgWHbbRaPftH0TDhHm0QL92kpCFgv0qwBEX06vZ/W0hCSWvDNRgB9Lz
 6qMg7d4j03tIyyoqGRg==
X-Authority-Analysis: v=2.4 cv=CpCys34D c=1 sm=1 tr=0 ts=69b38247 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=pGLkceISAAAA:8
 a=f7PW6T25hXEc860WGvwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_03,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130024
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
	TAGGED_FROM(0.00)[bounces-274864-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0DF1327D090
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 08:39:37PM -0500, Aaron Kling wrote:
> On Wed, Mar 11, 2026 at 7:49 PM Val Packett <val@packett.cool> wrote:
> >
> > On 3/11/26 2:44 PM, Aaron Kling wrote:
> >
> > > From: Teguh Sobirin <teguh@sobir.in>
> > >
> > > This adds a base dtb of everything common between the AYN QCS8550
> > > devices. It is intended to be extended by device specific overlays.
> > >
> > > Signed-off-by: Teguh Sobirin <teguh@sobir.in>
> > > Co-developed-by: Aaron Kling <webgeek1234@gmail.com>
> > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile                  |    1 +
> > >   arch/arm64/boot/dts/qcom/qcs8550-ayntec-common.dts | 1777 ++++++++++++++++++++
> > >   2 files changed, 1778 insertions(+)
> > > […]
> > > +/ {
> > > +     model = "AYN QCS8550 Common";
> > > +     compatible = "ayntec,qcs8550-common", "qcom,qcs8550", "qcom,sm8550";
> >
> > Huh?.. All existing -common files are .dtsi includes without their own
> > model/compatible, and the compile-time "dtbo" support is only used for
> > EL2 where we want to apply the same thing to many many devices without
> > polluting the tree with extra glue files. I don't see why this should be
> > a "common device" with its own compatible string, and not just a dtsi.
> 
> My use case for these devices is Android, using a single base dtb and
> variant dtbo's in a single software build. Given the aosp boot image
> v4 setup, using individual dtb's would require different vendor_boot
> images, which would require multiple build targets. This setup allows
> for my use case, while also having individual dtb targets for a
> standard Linux use case. To my knowledge, the final device specific
> dtb from this is the same as a dtb using a common dtsi.

This needs to be explained in the commit message. But do you need then a
model/compatible in the default dtb?

> 
> > > […]
> > > +&i2c0 {
> > > +     clock-frequency = <400000>;
> > > +     status = "okay";
> > > +};
> > > +
> > > +&i2c4 {
> > > +     clock-frequency = <400000>;
> > > +     status = "okay";
> > > +};
> > > +
> > > +&i2c12 {
> > > +     clock-frequency = <400000>;
> > > +     status = "okay";
> > > +};
> > If the individual devices actually use these busses, better to enable
> > them inside of their .dts as well I think?
> 
> I can move them. I think the idea was that all variants do use these,
> but for different hardware, so might as well commonize this part. This
> part existed before I started working on the devices, so I can't say
> for sure.

Well, the only common part is the frequency & status, so not so much.

BTW: could you please uniformly add an empty line before the status
properties?

> 
> > > +&iris {
> > > +     status = "okay";
> > > +};
> > Works with generic firmware?
> 
> I have not been able to verify this. Unfortunately, there is not an
> aidl v4l2 c2 hal for aosp. If the expectation is that device specific
> firmware is needed, even for unfused devices, I can drop this section
> until I am able to use it. Or maybe Teguh could chime in if this works
> on ROCKNIX.

You can use ffmpeg to verify the unit. It has v4l2m2m codecs.

-- 
With best wishes
Dmitry

