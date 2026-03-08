Return-Path: <devicetree+bounces-272586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Dcs1G/GOrWmP4QEAu9opvQ
	(envelope-from <devicetree+bounces-272586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 16:00:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FB7230D00
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 15:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C68E300F110
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 14:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB55628469A;
	Sun,  8 Mar 2026 14:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eQbmS2Ou";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="atIN2Wrq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95CF926056C
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 14:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772981997; cv=none; b=n07WbwcG23h1urb2YLhSRPzjU1HBESdSneI43hSjY3AV9LjEpMZSQ3wWAOdKvJ9scUZ1RrwAauV4xJAh2f+3oGOkELVKPaU7a3bZQq+ivo5zrYqQ47GNP9ZePnaZ+sFmAvVQ0wowfe2RBgRhA+gpY7zum6bJSfOJJqG/gxaebG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772981997; c=relaxed/simple;
	bh=sIkLRWshfsUzl8k0tTWsf3IBRozXflOceJthOMuh7AM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qboHm9jIdvDd4kQ3YeflTScwOHbXZPrGbVLYKYFA0daVt1qXuVNRKg+giIamh+rlL4icG4H12Q3h+wgBWCBkloiyEGmTaS2bIwaXJHdjz4X5GDvKT6x5KFcRe73f8jXFvi282b3itCtzt9gdB5Akhmz/3GkfYBgx9W8smGYhTGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eQbmS2Ou; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=atIN2Wrq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62868ws2656929
	for <devicetree@vger.kernel.org>; Sun, 8 Mar 2026 14:59:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hsTDb6XVP6BJ/4sIkucYFt3d
	hMd9/kDY/q5PRt6auHY=; b=eQbmS2OuaiWCm+O74rdiHpcTrqTrxvjJZHarUNU8
	4R9EDj4+crmUxmPf0yjjcn1anEDW1Tpx2Zl2vPr/MThF6Ll7s76IOK93SPIfeqL6
	MZ3hsTbk37SQRZwtYt0wT4aN06AZDde5ibBxz5FfV6C0MfGPsWSdpzvBuzqzAIQ1
	uj2H1q/aFYlWYmC/MCRm7gUp0Wg4JM8Fyvr+rdmpxW7D1EhujofpPk5CnMcM87d7
	/WwhXw0vXg7brinSQnAoZeMB14Aj27O0h9wmUeSD0RuXova0KJOb82afYr88Z7/1
	hgXF73ma5iD8ZRX1nDGUKah0rrBUikjbIG9gvvs25cSw6A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9cpk11c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 14:59:55 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd849cd562so224445285a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 07:59:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772981995; x=1773586795; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hsTDb6XVP6BJ/4sIkucYFt3dhMd9/kDY/q5PRt6auHY=;
        b=atIN2Wrqs9h2ZlzY4xAixeEJk50P+rGaB9BTdkKfkerhfipLzGSRJrgmRfwKqMhtJp
         quaAq0P2hF4vNCJxdECeCxdOs/P54xq/2U0HWXnHnBGWJbGouhclk0OxWa2HIKV2FNpL
         irKG67VYuRMaysouVRDT9F4HnhUFZrK4WCHYrWosAYf0Dgnxk7S/QX1qMPA6JVlUkbCt
         NGYvCC2/vIHDLf334dfK2hnY5Z+tlG8GPxQFMHwGOUr53DisskgSzYZDjJp93/7m+h0k
         lWWANom/8mT0PXoWNldv+jxmWeA6rwp96hSYW6MpwQgjSv0zba3zb0kOY8eplRuhRw5+
         nomg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772981995; x=1773586795;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hsTDb6XVP6BJ/4sIkucYFt3dhMd9/kDY/q5PRt6auHY=;
        b=UQvNpY1tUteq0nRtm+vjIwUmRkiLyEy8cobX6qd9NmBoWcpXwFqarIWSiyCUzhlMl8
         uhrJUeDaEQw3tr8DKDv7Q9WbFNCsrRG5H8bCULNHCDOm6iieGe4Lu0hidcFSt7SB6+Zf
         1+Tf2BTPRXy3r6AYiAHLJ+/vBRPWQ2anfhmU0QpI2c8px/M7viHHf7dOf3tMO0XpvzOf
         LLjsFQ+ivPc4jlUWRwErSNmN8EngQ0tUjLDNJbx0VtJslTv9qOAVWF93Wat6R7lD8xoD
         TK8gQqA5C02YEPmUS9l3P5TRFgbW+/Eqayjnl2AvWekYohMnjM8g5X5UTqvxoX7AIg8Q
         ioJw==
X-Forwarded-Encrypted: i=1; AJvYcCUpRAUIRHkgwq0mdJlXUGA7aAiFhWBMuPeQad6j3w6PRAyCWdYKCtnF9tZjHt56Gx09hp5sOJlvQwq1@vger.kernel.org
X-Gm-Message-State: AOJu0Yysl9xdVAtjuzOMQQ87XPi4J+MDNdnRjgVWv08Mcsz4mBjdz/am
	qu9zvcNWAm2bp9bV2XkAEwIzu3lO6Rj9SP8XSZvwbXimTET8IrjTONSNqqiwQXh8lMYb5+jhddu
	jP6G3PgcOa45rk1rOyZObSs0LqNM1FbuJbMixtKqnFGSg6Z6JMKcfiDNYKNxfzio3
X-Gm-Gg: ATEYQzwoSfWQI4RxPdlbiJ/q8bdlq0f53SaX9c4o+6AJwwUkh9w6tA/cqMaQrsKSRpA
	GL3X41smzr1gah42vEvoAIfdrsYt4sbgGSnP6UQS/pMEAIQlzPswrjkpefkcaBwpOFezGHxEObx
	XQvFSgmsNlGxSpvy+0tcBZX5cyGNt4VQhclajkjEuqq9gONOV4Gxrs72XXAB+yOROXlRiawpL95
	MZ+SBMqSH6NanNhFMqOBO4dF3gfXu/gxdLY4ZdC32hHQOh6bVlH6lVW5v2/nlogQDbxJafcja4p
	KAY6sfQIPwZcJ7QJq9aR89rucU0Yf9rFIjT9XeJh7wzrOybtaMSk3gX7iJXavb0vvrUJ9XLer1a
	RwsAEm/50uwlv7rSDf4wJ0KQDa3JOAcJHopirWQdZk7XDqvE3IQeNjGcZCQHeiDEl1NqqirkYtT
	7/+ETwWeK8sJ+YlRK7ZxYkKgNeX85X0QoFYuY=
X-Received: by 2002:a05:620a:198a:b0:8ca:d5cb:6835 with SMTP id af79cd13be357-8cd6d4fb0f9mr1022612885a.48.1772981994729;
        Sun, 08 Mar 2026 07:59:54 -0700 (PDT)
X-Received: by 2002:a05:620a:198a:b0:8ca:d5cb:6835 with SMTP id af79cd13be357-8cd6d4fb0f9mr1022610085a.48.1772981994160;
        Sun, 08 Mar 2026 07:59:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d01cd9csm1509063e87.1.2026.03.08.07.59.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 07:59:52 -0700 (PDT)
Date: Sun, 8 Mar 2026 16:59:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alexander Koskovich <AKoskovich@pm.me>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8250: Add label for reserved-memory
 node
Message-ID: <cifklloa2hp6yt7o6kphjydq2mkpqs23avyqa22tsrf5xjsw6v@cgkvft5nossn>
References: <20260308-sm8250-reserved-mem-v1-1-889eca3c11ca@pm.me>
 <2b260d55-71cd-442f-bf9f-a9771a2765c7@kernel.org>
 <yyLvPClplHmyd72RJgOMXVLx_z6GT8sDZP8FyzlHMV7MrCm26twtNmxebCmLwusqGABJQTrIIAe-AAwAW3uaIQ8Rw5TId1C4v5reyj71nmU=@pm.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <yyLvPClplHmyd72RJgOMXVLx_z6GT8sDZP8FyzlHMV7MrCm26twtNmxebCmLwusqGABJQTrIIAe-AAwAW3uaIQ8Rw5TId1C4v5reyj71nmU=@pm.me>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA4MDEzOCBTYWx0ZWRfX1MsONdVmksli
 M53+ypfyH1v8Qwl0NVjwlTwjSoG/OKJcYB7J79Uzk5lftNJ9uJy52m+E16/GDMzNF1G0FtuBtqS
 NNC0uml6AYyq5li5UCW7iSYA81Rrq6gev5DUQfEnlKb+ahV8WAkDh2ix+hKioFnXTUk2KOFXIyw
 5xuVvxJDCHp+D4prLFHMG8QPJFNIB564DIqctqwI4Oz+T2jeYr2s30FaJdNR6niyOBd4Ip7MkKi
 JBFcUfuN54+2wNCtD1kFGOYoF6ajL4Qod3+0sVO2fNC+k6fAp5UlbNpGC3ZI7q5Tq3StTZmZ+Sz
 ioz4vyoFHwbTKyXo1ZHydXLRoIpE2FDHGqY46gbBAvtnd+/NH6m3Lhb8zg9iC1z7E+5la7tmrPI
 Z4gQYw7MENWYpRzhkTG3fu4T/ZUudJgLSS3wnVlHkRE5mi1w3Ha4ORnCL6W61exHbHtNyWDXael
 I7J4nPvo0RaBwjKVodQ==
X-Proofpoint-ORIG-GUID: eB3WBFI3hE6lG8cwwNTyY9yXVeb8w9xq
X-Proofpoint-GUID: eB3WBFI3hE6lG8cwwNTyY9yXVeb8w9xq
X-Authority-Analysis: v=2.4 cv=e7sLiKp/ c=1 sm=1 tr=0 ts=69ad8eeb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=fgW2vCsinbKONiUGdKUA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-08_04,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603080138
X-Rspamd-Queue-Id: 73FB7230D00
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272586-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.950];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Sun, Mar 08, 2026 at 11:52:07AM +0000, Alexander Koskovich wrote:
> On Sunday, March 8th, 2026 at 4:46 AM, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> 
> > There is no user for this, so change is pointless. labels do not exist
> > in DTBs, so drop the entire patch or provide here - in the same commit -
> > proper user.
> 
> Want to submit the ROG 3 in a follow up change but was trying to get
> all dependencies for it merged beforehand.
> 
> Should I just upload the devicetree and link to relevant patches?

It might be eaiser to submit DT with all DT dependencies in a single
series. Then the reviewers can see the reasons for your changes
and provide a more complete review.

> 
> > 
> > Best regards,
> > Krzysztof
> > 
> >

-- 
With best wishes
Dmitry

