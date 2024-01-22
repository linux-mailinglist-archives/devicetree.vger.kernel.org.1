Return-Path: <devicetree+bounces-33772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC408364A7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 14:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95BF2B215D0
	for <lists+devicetree@lfdr.de>; Mon, 22 Jan 2024 13:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2A93D0AB;
	Mon, 22 Jan 2024 13:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RK+iAIib"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0073D0A4
	for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 13:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705931158; cv=none; b=fl3inKQSn9WdBpel3Nd5H06FDfCBJ35fdppLpTN0PtMuOMno8ODRnC3BNhDZC1c0zlwEE31caE8aM8LVuap29djtZbI/ObWAz8NtLvqXfHQMh10PE4rJHgWvfIEMLV6kLNjhBKXULuqEOoaCJk8eGI9EGuqEUkJk+CD3AiMjrjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705931158; c=relaxed/simple;
	bh=OyJ1bxHA59iy5wXiAvSt/tACh10vEIfuDoG3PJNT2Zs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9EsuK7OLOLkesydPxnjXtR3bDRgq2Vw7FdTYiqDj3pWt2XwB4qHZg+5+VSc36Feg88J/1Ons/jksMtkL2BkMx+ZW9BKV4n6/OCW3wUnY9rd4AwKG+ykcmQOU3yuFPT1xBrX9FaDAxdn+lYfj4pBsnRs35A8ffjoOwCb/7fywCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RK+iAIib; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705931155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=plv/ArYH8njxp72HX9LenLJ5/vF2h2cX135s3bxKJy4=;
	b=RK+iAIibWX0PtWRmcYN1delOs1PeeZmSY7Zes5lH5YQEBUuz5TT57jB5WR9NO4vp+4i0xP
	G+7a/5QL8llNhB4CXYD3IETGyS7ETpxjlJQOn+J3epgN/iqj7fbZlDECFEzyLaW2fRBJkY
	3u7e6p0lc7Rht/d9GWqqOmOv4hqA/Zs=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-AxpafggTP76dJjC-eagRvw-1; Mon, 22 Jan 2024 08:45:54 -0500
X-MC-Unique: AxpafggTP76dJjC-eagRvw-1
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7831be985c0so520880385a.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 05:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705931154; x=1706535954;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=plv/ArYH8njxp72HX9LenLJ5/vF2h2cX135s3bxKJy4=;
        b=qIu1hYFHe/4vxje3Usf9ithD8g1YJ61r/bU968fkDFqmNd1tSIHNjrim8uovOn7A9v
         fX3z+vRosBCtT/8Uv4HmvB5rKUjXMU8oF0yOfUVjvCuGwqoPpV8pfJvX+RpYSFSGlVSH
         rijcEWv7dvSrGUqQFZvCBKbG8KAMxIRvGkexQIkVEwVcg1p6siEvAiKUUv1HIJy3areG
         XtEbspPzeUnUDUQFcm5hsyEbaZHZmdPl7u1ok1USHVJxXVCtBozHor9aeZO/rafRQyu8
         nmAxudc+N9sv1xWGl9MRz7kUx1zOSzVH74zCmFz4iR4KJ9/ZeECdQ1pYDaoCEG9HZMdm
         fmcw==
X-Gm-Message-State: AOJu0Yw2iNdPYHf8NEychx50o4iDv5ycgz84DjgOzP8FFeLdUQpfzGzL
	JN/hnX6IYG6bW/o8HdtcFWENAhSUlO7PQ5VZ72u2vi5+zmAZFEKXLG4H0pi5RaQ9B3uNh3oT2HF
	wATvxYdCDfVOybeUxIFJfonKwV75Zh9caEuKQgCiG19NqDOE23LsDi4S0P6k=
X-Received: by 2002:a05:620a:7ea:b0:781:2c00:c89d with SMTP id k10-20020a05620a07ea00b007812c00c89dmr4283011qkk.42.1705931154109;
        Mon, 22 Jan 2024 05:45:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHPeJ09NoZuiWW65L8NTiarhjnXk7pv73Ms+8RbqNyNkF97fXE1zOXmVKQRxwN4jqy2upvwMQ==
X-Received: by 2002:a05:620a:7ea:b0:781:2c00:c89d with SMTP id k10-20020a05620a07ea00b007812c00c89dmr4283004qkk.42.1705931153859;
        Mon, 22 Jan 2024 05:45:53 -0800 (PST)
Received: from x1 (c-24-2-114-156.hsd1.pa.comcast.net. [24.2.114.156])
        by smtp.gmail.com with ESMTPSA id c14-20020a05620a134e00b007839e9ef1d7sm825174qkl.122.2024.01.22.05.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jan 2024 05:45:53 -0800 (PST)
Date: Mon, 22 Jan 2024 08:45:51 -0500
From: Brian Masney <bmasney@redhat.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
	Eric Chanudet <echanude@redhat.com>,
	Ninad Naik <quic_ninanaik@quicinc.com>, andersson@kernel.org,
	konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	quic_psodagud@quicinc.com, quic_kprasan@quicinc.com,
	quic_ymg@quicinc.com, kernel@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map updates to
 SA8775P
Message-ID: <Za5xj8S3Gs7N-UUc@x1>
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
 <rq2dnfh6ctn5gbf3o3op5ywxx7zhx6r5sh5ykautye56o3p4dg@rjttk3rr65ld>
 <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com>
 <CAA8EJppLNFReZn1HK_radSkKkf5L584fx3FCuqG0FoUt4+H=nw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJppLNFReZn1HK_radSkKkf5L584fx3FCuqG0FoUt4+H=nw@mail.gmail.com>
User-Agent: Mutt/2.2.10 (2023-03-25)

Hi Dmitry,

On Fri, Jan 19, 2024 at 10:35:43PM +0200, Dmitry Baryshkov wrote:
> This kind of change sets a very bad precedent. This way old kernels
> become incompatible with the updated firmware. For me it looks like
> Linux kernel suddenly being unable to boot after the BIOS upgrade.
> Generally memory map updates should be disallowed after the board hits
> the production and the DT is published and merged. There can be other
> users of DT. BSD systems, U-Boot. We spend sensible efforts in making
> sure that DT is an ABI: newer kernel remain compatible with older DT
> files. We expect the same kind of efforts from device manufacturers.
> 
> I think unless there is a good reason, the memory map update should be
> reverted on the Qualcomm side as a breaking change.
> If this kind of update is absolutely necessary, it might be better to
> define a new set of board files utilising the new memory map, marking
> existing DT files as legacy.

This is on a development board that's not in production yet, so
personally I think this change is fine. It's in all of our best
interests to have SoC vendors push their code upstream early, even if
it means that later on we need to make memory map changes like this.

Once this is in production, then I agree with you that changes like
this should be avoided if possible.

Brian


