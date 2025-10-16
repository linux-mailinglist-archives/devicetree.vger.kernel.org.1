Return-Path: <devicetree+bounces-227888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68933BE56F9
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F5BB3B90A3
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 20:46:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C46284B2E;
	Thu, 16 Oct 2025 20:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iVtyg6Qf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A127464F
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 20:46:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760647581; cv=none; b=TwZfQ7DIn6y/I5fQBneSflXRn8F2OYSL1IwDSnvxzdhUPGr3usjq/pk6DYHXRdOTKVjqTp2TuTos9h1Wn4vY+tjQSqFMOrHjvgtyXez74NqMReCDPc5hRMrCTmbCvSPF4Om91M3SgzArVzP9fdsAWHjTscHliY+HGcUu0K9VNbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760647581; c=relaxed/simple;
	bh=0IJQhhsY21kSiG4vUShPsisj42ZivnjaHKFuaETuTtc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HVE3bx9ehCtq5zRAimHkXCPX+tHX2sS+RtDjiTa0OmfADe20AM5+tsEG29FLBgUDdbfk7IHneupAxG0O927xBrrHDnZC66GbglZqso19LNdDqlzonY+ucWRY2PtuMogz4oMwik4KR6RgjbE0HhAKqoc6GklHHLRObqe3Tq+RVTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iVtyg6Qf; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=roeck-us.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-789fb76b466so1219113b3a.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 13:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760647579; x=1761252379; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1Ai9+Zzzmk4YgwBbS11BlzZbpFH5SUN3q8VaF2OQnw=;
        b=iVtyg6Qfl0Bw5vOhFeDrfuWaKFwUmJpIeESeSmvi/d9RJnOpKJ7AOB9k75i1QbImEg
         JoeZx0C45K2dNhEYnnd0CGFeQAtHPZvvbZ2pOy+qkxSPDKVRfAHA8RAe5zXT60zlyltI
         /wOZtCJ9jK9CK+PsJwNn+Hg7ioXn9Ho5NqghwhuJMnRC/R+RALkkJvPMclFWqa0AMYep
         GQ/3v2F6hAJyFnRvqF/LUvVWLrr22tZwzSng/JzqGIdLabiaa6WD4TOjMTQcskQ6UpkQ
         mZytzFONbgwVQImHDCwb4FHUI4i+Xf9pQs8ZGoP40PnTHbqe0bRqYyAs7omN0515eR/0
         UmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760647579; x=1761252379;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V1Ai9+Zzzmk4YgwBbS11BlzZbpFH5SUN3q8VaF2OQnw=;
        b=B+Etxn/78qAZS0DmyPTv0SGVPSTcEz7/bZWFHAj0DQ3WpYlyOugvXbtvK1sW+c+QYi
         HH8NYfA+E2JnGjpdJAs2/1RsUnkCaazhs9UfXOmbzfBg4TbOC+nf+PbcQG7eqTahoAGh
         VwqGVaoA5qT7M8T/G32QMNM/GQlXqYeYKrXWdjPsRtIJ5sZy68UDiX58HKgx+AlCrDOJ
         GKHgcf/9qT12v5mkw5MEZgQiKawa5FEMk7aTwTJaag1CfJDSwbQdCMbFybt1lwuQ/mgH
         ShtdSI5YA33CmhD+8M594eobJuosbJ8VzdABLwtnrSrjKvMq3exkv3r4XJiM7edGVBHH
         zZ2g==
X-Gm-Message-State: AOJu0YywJDRrxzyuLn2DblSVJhdtRB2fMy1hlOCidQQw/qGsC0APWyeW
	CAibc9JpE8WTA/7fI/PD4a7idMQCvmLQhPu9x1q7sTDerlmTFESNLeW7
X-Gm-Gg: ASbGncsegbsdWIuSKyl0PyBPmx5u1bAxP029O24BCMISeptHeuJEbR2P9J5mlgGs7Sv
	BWsP3o9ubtFa2wuq6+3tLpU3NDM0xar8u7lI73vvsdc6WBoVBB0i2MUTh5qA3+fnJclNetrjZhx
	Ocw+folmbftvgjxCAs8dpgLmlztzGKqwwy2b/PeHoG3T64lz9Q1Vc0AXthiiHNXSbROLf/ffS4T
	W51ABBojokaLyLxHlXsYqJbNQcZ1l/D5xM9BvZLNMa1IC5Gon4AFt3RQ3cmN+anckKpKp9GFvK8
	ga1bdSFXuHOnpfXGNdv5kPLXcjFffwyx0icrxj1Us0t7m+Vq2dyBsRFB/LDgkVsjRghvOIRQ6us
	qXB4oU2xFnzSnvyLad+quoT09xd+ALdpgo7IBZ0km5MLIGM4/h72OqHuFYYewxalUOBWuj0Yo/f
	1xq6OTgF3ElMDZNePN/12NlQW/GTAYXxkovw==
X-Google-Smtp-Source: AGHT+IE8MMym6AutsMmdioAIvxbR54n6YIfM8R/YQDBc5KW96x9wVJXon8S103zR5uXldC9gv8jYPA==
X-Received: by 2002:a05:6a20:a108:b0:32b:83af:11ff with SMTP id adf61e73a8af0-334a8515191mr1547559637.2.1760647579360;
        Thu, 16 Oct 2025 13:46:19 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d09d6easm23441857b3a.51.2025.10.16.13.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 13:46:18 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Thu, 16 Oct 2025 13:46:18 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>
Cc: devicetree@vger.kernel.org, linux-hwmon@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cosmin Tanislav <demonsingur@gmail.com>
Subject: Re: [PATCH 3/3] hwmon: (adt7410): Support adt7422 chip
Message-ID: <6a4df82a-d540-4927-8708-759680e15624@roeck-us.net>
References: <20251015-dev-add-adt7422-v1-0-7cf72d3253ad@analog.com>
 <20251015-dev-add-adt7422-v1-3-7cf72d3253ad@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015-dev-add-adt7422-v1-3-7cf72d3253ad@analog.com>

On Wed, Oct 15, 2025 at 03:52:21PM +0100, Nuno Sá wrote:
> From: Nuno Sá <nuno.sa@analog.com>
> 
> Add support for the ADT7422 high accuracy digital temperature sensor. It's
> identical to the other chips supported in the driver so we just need to
> add it to the ID tables.
> 
> Co-developed-by: Cosmin Tanislav <demonsingur@gmail.com>
> Signed-off-by: Cosmin Tanislav <demonsingur@gmail.com>
> Signed-off-by: Nuno Sá <nuno.sa@analog.com>

Applied.

Thanks,
Guenter

