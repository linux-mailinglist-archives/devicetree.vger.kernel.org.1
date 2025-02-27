Return-Path: <devicetree+bounces-152198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1E7A484B3
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 17:21:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FFFA1899AF9
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:15:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAA7A1A8403;
	Thu, 27 Feb 2025 16:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OOIogdiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D4019C57C
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 16:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740672579; cv=none; b=ihrwqqcZn5CaXq+S8p9ipWe84IVYPhBDCCKPPaHdAmJPEIvoBrHf1RCyRakzJdh524Eqrcv00pPI3yFPUqTsyo1HPMwFXM2BeYCvASodJcUK3B3PIrhNpM+rgpPLYmDDwTnMF65zpfAiEO+olQw1cIq7kRvwKybRJezPqynwUdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740672579; c=relaxed/simple;
	bh=vvmQSQ9bG7LyD/zOH8DXzpjJRKelZZHC5MkRHwo+th8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=De0HQ3ufONss0kFCgF3SvJ8SCzBUgVtmsaWIT8Raa8mfPj2uV7y+lljBbuQtPja7zTzGIoSNQ1DPJ7705o7223moTKge0k0pk2zkn5NBTUwYAZFUsCGh7wvsM4IZNbCFRWWOYc+R346jiNPufngwEQ7xMg2Bv7iQwR1Ph0IVc3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OOIogdiD; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30a36eecb9dso13598261fa.2
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 08:09:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740672575; x=1741277375; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4/VUsIry0p1NFH0lewyTgEe2QgpPTkg8i3AfM1Pq08c=;
        b=OOIogdiD5ezp1fmcU7+U3ej5qTAUzafzCz8D2VYFGXulMRNiKrwj9FfqXOHs5/7kvS
         FQTv5vZ53apCzejYyv4ybAvhhWCr0nxalcQKw1jG95Pd8rWk50DeJ8MqVdHtcqE2ggh1
         BwdlsInaVhDG9PGo+P/UglsqGVj375ZHa0HqD+93YJmy51znXHtQ3/N8AYcgnzYjcjLd
         zNsEVTuXlCJEAu12f4zfaM8fDX1N5tEC/eaOaKx1DMbtmiDwMVFcwcxg6qU3vHFgh0TF
         S2LKGgrlhhF4OCYWX1qx+CwrFuH2ICfOb4DhOnSp8HhImkH8DcS6tlfPr/IwtBqeOJfB
         xi0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740672575; x=1741277375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4/VUsIry0p1NFH0lewyTgEe2QgpPTkg8i3AfM1Pq08c=;
        b=NSOLLi78UwSl5B84AFqTp5XbrgcXTJ65dVAwGImwXd8todnvm6g8om0GvfSGGpF78z
         wOfrvauZSoOiXK2MSUwhEHcbZSd0WU1yHnYNUQk26JO2NE3uC/zOxaSNpLfr3Sct6NqN
         Pa8iN+dYBcTAC5M7/WjCIa11FLHr0g9yLDhP6cQzKY+4QSc04vduQNCKIWLE+gWZsK/v
         RAk5NMMRnmDHh5GWHqTbDkUW6MgzohuuvFAFkAdykuakzRYfXDxpb/hpUuRe6VUqZ7Ec
         e47VVlkHtsq7Lu+vVPQoyiXjwykg7IogGPZWLXBJ+RsP9hlqAMg02M1q2N2XLDPRYOHm
         4ahA==
X-Forwarded-Encrypted: i=1; AJvYcCU5uCxIk5qx+nZnjEDaUlo0r4GpNZO2bDyA+n7XUWyxUz1V1CrBz6QXqPjP5TlsAciMwco36a7zjc4O@vger.kernel.org
X-Gm-Message-State: AOJu0YzNIj4FxRM5O+7CqE/qM4wsIqCj8zqWi2bm/5D9RvgTmFekYinU
	kusd6jd9leLGMIIsnG5NJzQbgSwrRUHQUIVaMnZzsaFnFM1k+jvGvOgNT743P1o=
X-Gm-Gg: ASbGncsv1EMRPWEloc6pAZOSS7GGsObsnWCLHUbuuSr/V8KkvQr8pILEEcbJzickRVw
	2hbapXrHCIfUiezha8+9uZ/jjbbJ3NcIsGRkZHrNlHOjRWcZciLadJ+U/HYFh0YT9CabUW1f9RR
	N24uUMF7WsJZtIDxPXgh9UFfrzH0DIkPkHZzh6eDh7a8jul5ug+UP4q2md1M5IkIXaCqljUA9Aa
	0uL80O5PCW+KWjlOpGMpxXA4qJincZlTVzHEHV9hr4FOc4+Ai2WYK6WeIBBbrFmB9lUA6WQsPlW
	+jJrwxx03RnnCVCn0ebfFYJ7vqNKN5IPI55a65B+MErpcy4TUptExmHT4gG8W5WVOefoNUKMr/w
	zCZCqQQ==
X-Google-Smtp-Source: AGHT+IGantaj4iOEBsmehQufqCtLyP839fLFIF8/OzQyOmwBYnvU25Q+3zna/G2tIKhQxmOj4KjClQ==
X-Received: by 2002:a2e:908d:0:b0:308:860e:d4d3 with SMTP id 38308e7fff4ca-30a598f6c62mr97724201fa.22.1740672574881;
        Thu, 27 Feb 2025 08:09:34 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b8685f43asm1964521fa.82.2025.02.27.08.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 08:09:34 -0800 (PST)
Date: Thu, 27 Feb 2025 18:09:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Odelu Kukatla <quic_okukatla@quicinc.com>, Jeff Johnson <jeff.johnson@oss.qualcomm.com>, 
	Mike Tipton <mdtipton@quicinc.com>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V9 3/7] interconnect: qcom: Add multidev EPSS L3 support
Message-ID: <7lqkbkor7w4qm4esclm4i42eq5pq6nbxnouoz5ywklkstgvbj6@rpm3rssyarsq>
References: <20250227155213.404-1-quic_rlaggysh@quicinc.com>
 <20250227155213.404-4-quic_rlaggysh@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227155213.404-4-quic_rlaggysh@quicinc.com>

On Thu, Feb 27, 2025 at 03:52:09PM +0000, Raviteja Laggyshetty wrote:
> EPSS on SA8775P has two instances, necessitating the creation of two
> device nodes with different compatibles due to the unique ICC node ID
> and name limitations in the interconnect framework. Add multidevice
> support for the OSM-L3 provider to dynamically obtain unique node IDs
> and register with the framework.
> EPSS topology includes a single master-slave pair within the same
> provider, the node linking logic is simplified by directly connecting
> the master node to the slave node.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> ---
>  drivers/interconnect/qcom/osm-l3.c | 37 ++++++++++--------------------
>  1 file changed, 12 insertions(+), 25 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> 

-- 
With best wishes
Dmitry

