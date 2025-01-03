Return-Path: <devicetree+bounces-135235-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B77C3A003AD
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 06:39:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 849901620EA
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EEEA1B1D65;
	Fri,  3 Jan 2025 05:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GMv+6lHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6ED314A614
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 05:39:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735882788; cv=none; b=doM1sY5jwoSeqL/vMFNkYRFsWONDZp61392XCWjzPf+kvRSD7W8CLxuiS8RgtdmCTnktlHYktdyNvf9pRu2pcQrQ+5x8gUQVa/Sr5BIRC9vb6tiCTYLatDz0CcSsn+b5rwYVidC1mpWGLz9useSUX0jiaWGPZE2ZzWl+J+utEJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735882788; c=relaxed/simple;
	bh=dGAADOruDdVevfRRRw6q/kM1MBzw84JoMeDHeS339y4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uGic4mRSz99YEgRiPCn/5E0aQucZjq/io+w+EsgkfCnXAp/qWbUuJhkxRpYXAKKDiFMBb/Z6y6Dvff+WeBGPiyZgOcGpZInKuVTsEsEsOMquiCz7n4i0/6JJOpLlJ0juktmsMEItY6WwTIZCyi9uGPUfbN2nGsE2Wd7RhdYmClw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GMv+6lHn; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-3023c51146cso125588991fa.1
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 21:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735882785; x=1736487585; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5b+7A2P7nxK0BAHexMMe/vomjIPW53TQMc+8xGTDpTM=;
        b=GMv+6lHnZJ0++mzfsWJbtQMwxBJX5ttLSwYkXK+Ilq+qTG2a7fr6rWtWGO2i50AHc5
         h7QBJKPxdEyo5+7qq4SzNOXdLrHo/qZztukWJkn/mnhiqAcWmqLSlu7qZoOmQJKTCiDb
         iK5pugwej0e2d+SLtLuJ/IfRDxUdYRe77oygfWHYX8LmmmFheasTyUF3I/HPFaLNuq0y
         1TX6XzFYIadNLk9yIrgBO8RtCINWvBdrJOGkBXA1/4mctAycoRwxHn79cb9Ji5+RCi4k
         SIAXaXFFeMfasWpRz83ndim/wOaICB4/fX/XJT50BeW8OMe8s4wLvUvkyBZcGVFCy7C5
         xk1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735882785; x=1736487585;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5b+7A2P7nxK0BAHexMMe/vomjIPW53TQMc+8xGTDpTM=;
        b=HajnoFEs5IYEYStQTfp70ye4yrB0OAymFsp0YIGO219yXHY1FZq2daELvrBlp6/qHQ
         Kl3sgK6HAh+VGDvA1irJglqPmmUcFfLiEM6JBoUn7xrqmyzO0z32Iz6VX/2EZeDygVtS
         oxyCBtdx1fWBjKGD9+120pvne/Bu+0MYn3/vxnvQ5stK7S6PCmjWI3WzdBAiXLKEXqDE
         OUCvXQimXg8+FbTcdTYxSsQnoSCNTZemZHSVJpfqlf3t8DUHxwXw88dVBVUBLJltmRwl
         1VRs4jyUBWux2lxRV6qZ/q4udUq8VNOLTEAHIfP9RdlMw8SgZ0zIR/25GR6e1feOauPN
         koUg==
X-Forwarded-Encrypted: i=1; AJvYcCVSDvcf53V4p+M1LD6k5plVjuGwFbByPTo7PSebAFTda8jXwfs7WiiweVCPu9diayoa27OTumIcNDCN@vger.kernel.org
X-Gm-Message-State: AOJu0YyP3eokpgiwviMUM1YiKHWg7sZCcsbRktJPEs+eHwfYpPUTtPOv
	/b7VJ8lru6ql0VyZC0FNHFYcYdx0+tUh7sGIN7jGjIJhlXR0XQ/zCufLs+29wYc=
X-Gm-Gg: ASbGnctTvJSw8NhNEMbEKXHMjNSrzRp+VwIOp1nzyH9OCiQV2UirHj/dETTh72VGXfo
	ubeijWuU57ESzY4gPbKYxJHyVv8i3jFFaDtUvar79jRRM5l3XiPRp7kpeQx3jz75vLgL+i72mvE
	q4TFeRhV9AZCm9fnQvV0AmahcAYjR0m9ynWPwy3UCtC1ZoQ2OfFptMp+5gC0XHePAmqdOTZs8+A
	1jmd5tMyGhaAgURM6mrI3EK0x9r0nIdvBP/dtMEkhho1patUby8IVVCROW4mWryQz34U4N+gxU9
	xmRfpf4qvDSk4DXjP95Ehnxn1EP/vmKaQhb9
X-Google-Smtp-Source: AGHT+IFMjVY1uuT/QoNkXenKEQnnYtCwE848ro88ln+LVY+M3F/zoO4jh6ZHAeBMU0PNuvJB5LjqpA==
X-Received: by 2002:a2e:b8d1:0:b0:302:2cb3:bb1d with SMTP id 38308e7fff4ca-30469b575fcmr125949051fa.12.1735882784793;
        Thu, 02 Jan 2025 21:39:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6caf1sm44798991fa.4.2025.01.02.21.39.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:39:44 -0800 (PST)
Date: Fri, 3 Jan 2025 07:39:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jos Wang <joswang1221@gmail.com>
Cc: heikki.krogerus@linux.intel.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, rdbabiera@google.com, 
	Jos Wang <joswang@lenovo.com>, stable@vger.kernel.org
Subject: Re: [PATCH v2, 2/2] usb: typec: tcpm: fix the sender response time
 issue
Message-ID: <j2icjry36lnmhhe2jskh4jpdxmogv4xy3mnbjasechbg5gf76u@wlakfperuk7q>
References: <20241222105239.2618-1-joswang1221@gmail.com>
 <20241222105239.2618-2-joswang1221@gmail.com>
 <exu4kkmysquqfygz4gk26kfzediyqmq3wsxvu5ro454mi4fgyp@gr44ymyyxmng>
 <CAMtoTm0nCL7jL=Wno7Cv5upyPnF0wTOXbY+WNG+y1P94513Pgg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMtoTm0nCL7jL=Wno7Cv5upyPnF0wTOXbY+WNG+y1P94513Pgg@mail.gmail.com>

On Wed, Jan 01, 2025 at 09:00:01PM +0800, Jos Wang wrote:
> Hi, thanks for your help in reviewing the code, and happy new year to
> you and your family!
> 
> For the first commit you mentioned (modification time is 27ms), I
> understand that just modify the include/linux/usb/pd.h file:

In future please respond under the comment, not at the top of the
message. Thank you.

> diff --git a/include/linux/usb/pd.h b/include/linux/usb/pd.h
> index d50098fb16b5..cd2cc535d21d 100644
> --- a/include/linux/usb/pd.h
> +++ b/include/linux/usb/pd.h
> @@ -457,7 +457,7 @@ static inline unsigned int rdo_max_power(u32 rdo)
>  #define PD_T_NO_RESPONSE       5000    /* 4.5 - 5.5 seconds */
>  #define PD_T_DB_DETECT         10000   /* 10 - 15 seconds */
>  #define PD_T_SEND_SOURCE_CAP   150     /* 100 - 200 ms */
> -#define PD_T_SENDER_RESPONSE   60      /* 24 - 30 ms, relaxed */
> +#define PD_T_SENDER_RESPONSE   27      /* 24 - 30 ms, relaxed */
>  #define PD_T_RECEIVER_RESPONSE 15      /* 15ms max */
>  #define PD_T_SOURCE_ACTIVITY   45
>  #define PD_T_SINK_ACTIVITY     135
> 
> Is my understanding correct?

Yes.

> 
> 
> Thanks
> Jos Wang
> 
> On Sun, Dec 22, 2024 at 9:14 PM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Sun, Dec 22, 2024 at 06:52:39PM +0800, joswang wrote:
> > > From: Jos Wang <joswang@lenovo.com>
> > >
> > > According to the USB PD3 CTS specification
> > > (https://usb.org/document-library/
> > > usb-power-delivery-compliance-test-specification-0/
> > > USB_PD3_CTS_Q4_2024_OR.zip), the requirements for
> > > tSenderResponse are different in PD2 and PD3 modes, see
> > > Table 19 Timing Table & Calculations. For PD2 mode, the
> > > tSenderResponse min 24ms and max 30ms; for PD3 mode, the
> > > tSenderResponse min 27ms and max 33ms.
> > >
> > > For the "TEST.PD.PROT.SRC.2 Get_Source_Cap No Request" test
> > > item, after receiving the Source_Capabilities Message sent by
> > > the UUT, the tester deliberately does not send a Request Message
> > > in order to force the SenderResponse timer on the Source UUT to
> > > timeout. The Tester checks that a Hard Reset is detected between
> > > tSenderResponse min and max，the delay is between the last bit of
> > > the GoodCRC Message EOP has been sent and the first bit of Hard
> > > Reset SOP has been received. The current code does not distinguish
> > > between PD2 and PD3 modes, and tSenderResponse defaults to 60ms.
> > > This will cause this test item and the following tests to fail:
> > > TEST.PD.PROT.SRC3.2 SenderResponseTimer Timeout
> > > TEST.PD.PROT.SNK.6 SenderResponseTimer Timeout
> > >
> > > Considering factors such as SOC performance, i2c rate, and the speed
> > > of PD chip sending data, "pd2-sender-response-time-ms" and
> > > "pd3-sender-response-time-ms" DT time properties are added to allow
> > > users to define platform timing. For values that have not been
> > > explicitly defined in DT using this property, a default value of 27ms
> > > for PD2 tSenderResponse and 30ms for PD3 tSenderResponse is set.
> >
> > You have several different changes squashed into the same commit:
> > - Change the timeout from 60 ms to 27-30 ms (I'd recommend using 27 ms
> >   as it fits both 24-30 ms and 27-33 ms ranges,
> > - Make timeout depend on the PD version,
> > - Make timeouts configurable via DT.
> >
> > Only the first item is a fix per se and only that change should be
> > considered for backporting. Please unsquash your changes into logical
> > commits.  Theoretically the second change can be thought about as a part
> > of the third change (making timeouts configurable) or of the fist change
> > (fix the timeout to follow the standard), but I'd suggest having three
> > separate commits.
> >
> > >
> > > Fixes: 2eadc33f40d4 ("typec: tcpm: Add core support for sink side PPS")
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Jos Wang <joswang@lenovo.com>
> > > ---
> > > v1 -> v2:
> > > - modify the commit message
> > > - patch 1/2 and patch 2/2 are placed in the same thread
> >
> > --
> > With best wishes
> > Dmitry

-- 
With best wishes
Dmitry

