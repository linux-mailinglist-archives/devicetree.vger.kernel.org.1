Return-Path: <devicetree+bounces-33084-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF44A83207D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 21:28:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 86D8B28C924
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 20:28:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 812CD2E63A;
	Thu, 18 Jan 2024 20:28:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="EY0atT07"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5D02E821
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 20:28:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705609693; cv=none; b=l1oxmFs4e3KwX0zWjoRerKfWy89kiYc+rZWcOPzJgS7KtBEtjEmclk4EN1lizCwy59VEkvFMtZX+owC+wTR8A7Er9V5XI+XwVjymhado3NPrnK2ZdlBxOALTgoUoWrCtK4gFP56xkrEYkOsk5P6bSP1cuK0r/csxd2YWbOdCk0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705609693; c=relaxed/simple;
	bh=+ihZ3ptOctQ5m1rlil5tsOHnfk0f8/Q4JkX+8RY4A5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OeXSX9etZixN3MvfgDLvWzuL/70uAPdRTYMp7A+XfB0ZmVSL6cFKfCEdzTSMKeCBM5sB7skMBCXdrnfcHYbCLfLeVYOzYzviKPeuRvtKzfj2E2gmVhFaBmhS3kFQ6lmb8fgGdwmmvyUBXxcbpQzWGxYumf9j7Rmfw/4s/STcrsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=EY0atT07; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705609691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=+slQrL96GqENiDjqUtTjudE87lRXCqszoznm1iN3Xcs=;
	b=EY0atT07La4PPelWcAMiR9My2C/xswtXbTY1XXsYBmyVcJ/1RUYGGhYYeRo0y38cPhss9N
	xfIgR1TjsSynCOhtlqrU0LwgaR5H8y8oExm/UPTIr/QqVuOTRA/PdU0/nA9OpFxDBnva0N
	R+gLHY3rPbWQwIHyKi1GK5P8O98glvI=
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com
 [209.85.160.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-y9oJkdLlNrS6fTpXxcCj1w-1; Thu, 18 Jan 2024 15:28:09 -0500
X-MC-Unique: y9oJkdLlNrS6fTpXxcCj1w-1
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-203014900a9so151729fac.3
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 12:28:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705609689; x=1706214489;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+slQrL96GqENiDjqUtTjudE87lRXCqszoznm1iN3Xcs=;
        b=Ydck1j4XOalWax+tRIn/0dqmmbeAhbGYO6+e4WeXEWjOof4MbQfs9Xckz7mbzKls9e
         oLrzq0RA79wY2OMQMwDmQVYitXn20Wae//PFvx400H7nUMDMlvhUZkNLBMf+Zjrz0lkw
         uHVqTS7RSlyXi3ZCzFyOUnrCHpI5wF5JSVi5HEpMqCYtWTBy1JrlNOxri5wsjocwgiHK
         4+adsHL4OTiyJbAReeRM5FoVNzrqRpr++7ppDQL2cZk3lR81RXkVEDw27XEhaGIeXDPE
         Djxb36ZLvptgn8S+z3cpleEujx+dzn+k5Fqq7CYNuFBDafX9IoTjpPEmwNuKMDMT/C60
         kXRg==
X-Gm-Message-State: AOJu0YyI4NMpXwu/3828cgotiDUjRGDrMSPcPNRQ/ZTVIQmSVG914rb7
	dLKKGxHgb+Ag9kJooPNXE5k5HWxaRNo+A1RfFvKx+XkDPGfwLsjckdERL4R9S/hIEqkChogSS9N
	bNptxKZmdmSpOvWpau4kykpKEbWyN6jP/9Xrg/1sld7raJxOKwrfot3M7OoY=
X-Received: by 2002:a05:6870:af4a:b0:210:a6c2:b106 with SMTP id uy10-20020a056870af4a00b00210a6c2b106mr1340501oab.76.1705609689093;
        Thu, 18 Jan 2024 12:28:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFBYj3pP0HSSRWzxrDFz46mWY4ulenAUBplrdo+1T9oQL22wODQrmD82jcrKdLqfAwriXtmKg==
X-Received: by 2002:a05:6870:af4a:b0:210:a6c2:b106 with SMTP id uy10-20020a056870af4a00b00210a6c2b106mr1340489oab.76.1705609688903;
        Thu, 18 Jan 2024 12:28:08 -0800 (PST)
Received: from x1 (c-24-2-114-156.hsd1.pa.comcast.net. [24.2.114.156])
        by smtp.gmail.com with ESMTPSA id du30-20020a05620a47de00b007825f50eac6sm5530364qkb.122.2024.01.18.12.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 12:28:08 -0800 (PST)
Date: Thu, 18 Jan 2024 15:28:07 -0500
From: Brian Masney <bmasney@redhat.com>
To: Ninad Naik <quic_ninanaik@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	quic_psodagud@quicinc.com, quic_kprasan@quicinc.com,
	quic_ymg@quicinc.com, kernel@quicinc.com
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map updates to
 SA8775P
Message-ID: <ZamJ1wSXzJSyzqck@x1>
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
User-Agent: Mutt/2.2.10 (2023-03-25)

On Thu, Jan 18, 2024 at 09:27:11PM +0530, Ninad Naik wrote:
> New memory map layout changes (by Qualcomm firmware) have brought
> in updates to base addresses and/or size for different memory regions
> like cpcucp_fw, tz-stat, and also introduces new memory regions for
> resource manager firmware. This change brings in these corresponding
> memory map updates to the SA8775P SoC device tree.
> 
> Signed-off-by: Ninad Naik <quic_ninanaik@quicinc.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>

Krzysztof: It'd be nice if you could submit this patch for inclusion
to the stable trees since the system can crash without the updated
memory regions.


