Return-Path: <devicetree+bounces-265505-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SH1bLyTuj2m0UQEAu9opvQ
	(envelope-from <devicetree+bounces-265505-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 04:38:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E1913AEC0
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 04:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 017E5301D324
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A59D823F40D;
	Sat, 14 Feb 2026 03:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cM/kxHG8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED4925F99B
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 03:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771040287; cv=none; b=EeLStyVoCyAEA7Rrdvl3TR7hy5MJMpzn14pXGsGhC9tLFvw+Tim3RDhA3McNkrmmz6oDWGnS1pwkMljbW1r2C2FTWkjjHJYKq3S/+64qSMFYnGM3Iyy8NFSFHT1d6KxwBsL58SVINMUbRdsrYnucmLyQZtxhNpKQ0qEqhJpHB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771040287; c=relaxed/simple;
	bh=xxGNc+rP9ZPTTc3FwwTPwlQ5fGDKz+5HieBZopV7j38=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XnC+WDHZe7uF7whwDO+2NSBLrWlJeaBwIwwVXVMAOGCzqD1mfDRz6dqLQM63nTP6Zzxuw5mPepWHcBXKCJ8KGxovlBf1IQVnMI1LsqOdxCRrKmCe9M7q5ciQSLMepIsZWFyZW1eSS/dyMMCExIx0ioVpFmAeKoHFGfYpyZyofVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cM/kxHG8; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-896fb37d1f0so31311426d6.2
        for <devicetree@vger.kernel.org>; Fri, 13 Feb 2026 19:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771040285; x=1771645085; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LKQnzX/eBtVk8Ym0yArjRsUU5WC6RCp5/uzwJ8iLxzg=;
        b=cM/kxHG8YCT+TBahF1IzkNzefp2L+HNc4UceDLzsWUp/wO7XQrpRGrHd6WBt18PkYV
         RORz950OZFoviba75p46UpGubtwont4s4CHLVb5AieuwsvNyJE3DT3wdfb4U6qN07mj+
         /Vu+gCm0lCWZ9MAwj317Ucc1gPT4r7PsOhkXAFbJVDnbX6SKtjMVEnQyNLR24o6EqX6R
         FIdk7mTXaizZuZ1e9REuHY24qdV+jSPvaklvWv7MORKWvKNrMCTylWKSpy+jj0H2xFqY
         gpSZGEtC+hGCV0xv1DRxTsPQ30ameLbsfSqhNJzY1xbut05H28Nj+AruSVPiGtOUdbti
         sPtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771040285; x=1771645085;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LKQnzX/eBtVk8Ym0yArjRsUU5WC6RCp5/uzwJ8iLxzg=;
        b=jSR6sQp69awBXcF88H3zHWHOWNl4S1ukoNCuDA7buB6AxhihhY1Vg49i6KWYEuNLgq
         P9bivZ/W/DfRkBUh44uB4cSFYoBhvgy51m2/A+fH9z0PRXxflOkibefc6IAT0ulYom/5
         rAMnplb1NS7yE+qSh8dmAG60IRnK8yeLM3TnazVcuxI5RSVPfgzlJR5mcW5B/0ld72GL
         3+XZf2tDVVfqviRLBnGALalO62xfZB+fMfji1r2qH96FN68NWuVL86CFGC0wXOGzrNOy
         GY1A9W+1VWd7Wx0j2wU69T1aNlDKnrUr1QIfV0n4NlbMIkgJQKoa6KWLn1Kn8/qQbkMy
         +Z4A==
X-Forwarded-Encrypted: i=1; AJvYcCVEdSzDD6zBdLUJiS46cahzhyaNTZ5rlKvzVSgaiUPdm042wRdHvORuc8ZdqZ5xH5Z7mwAT4j5zI5Ox@vger.kernel.org
X-Gm-Message-State: AOJu0YxApgDmgX/3ljvUN5T20SSzMaPlOznfcKbo+Ih/FDmci6h/TqxR
	hLHgeWMc/t08eJaTG5d7X6YfOBVUQ74CxyYKCAn4mH4JJ3mpAy6vxfOZ
X-Gm-Gg: AZuq6aKs3AKExW7NBvdk2QM+U+CYK9UG0maO1gNRGf8QjCGqF+eaTA7MfIuk3j+c7Ka
	o4GrLCNa9fry8Ssj6C3G8QM4OsD+8U4RqFMCYh020USRWJbDtWAangodMhhDNihDmuZrWDPx2RB
	Q7KzkS6OjAJ4fbKPM3UDabQOshQM8ERehFF676UkAWfBbkjm2L8OGGxKk1++Ad09Cd6pf/3PWOh
	zDMY2ZvwvrV5W8r4o6oVR6xWHEhzkMOaGZtkS1blWx6O94VCnMtDzh1+MOP/pStK507zxDOkF3n
	SxIhNSh0/jQD4Al6h72NxD7wzbGaQNqLjQbaAZsqMkSy/eM9M/tIp+/HNzpQG4G9A5HNURJcCpC
	jw2o5LLxg/8s80rDONx4BZcOoRF5y6RFPWJhtCMjtd37v1Kr+x5cPYlFemFZ9dEbCMymLnOSaxX
	Gn2lD74nSGFiwjZku5eKjqnKEF+lR5G5XF9LW4MPTKXRQcBAR7fNZ4Q72UcVl5lt1yoNab1Y/ah
	tmvchYzufXrhllECc6xYhXVNEi4fg==
X-Received: by 2002:a05:6214:23c6:b0:88a:2de5:c824 with SMTP id 6a1803df08f44-897404bd0c2mr22980146d6.54.1771040285087;
        Fri, 13 Feb 2026 19:38:05 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cb2b1f8185sm758797185a.36.2026.02.13.19.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Feb 2026 19:38:04 -0800 (PST)
Date: Fri, 13 Feb 2026 22:38:41 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Nickolay Goppen <setotau@mainlining.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Srinivas Kandagatla <srini@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Johan Hovold <johan@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 01/10] ASoC: dt-bindings: qcom,sm8250: add compatible for
 sdm660-internal
Message-ID: <aY_uQZxuwt8rDf6n@rdacayan>
References: <20260211020302.2674-1-mailingradian@gmail.com>
 <20260211020302.2674-2-mailingradian@gmail.com>
 <yxrhmblavwkuhfrfgskujs7tz7cykojnqnl2mfrf365lhdem35@bgqwiaft67b3>
 <20260211-skilled-transparent-moth-fac10f@quoll>
 <f1b67c1e-cfc1-4d23-a24e-4dd342edd2e9@mainlining.org>
 <f27ec5bb-1562-4bcc-9178-4ff4d4fe00d8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f27ec5bb-1562-4bcc-9178-4ff4d4fe00d8@oss.qualcomm.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265505-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mailingradian@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[mainlining.org,kernel.org,oss.qualcomm.com,gmail.com,perex.cz,suse.com,linuxfoundation.org,quicinc.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 29E1913AEC0
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 10:34:27AM +0100, Konrad Dybcio wrote:
> On 2/11/26 10:55 PM, Nickolay Goppen wrote:
> > 
> > 11.02.2026 09:51, Krzysztof Kozlowski wrote:
> >> On Wed, Feb 11, 2026 at 04:11:24AM +0200, Dmitry Baryshkov wrote:
> >>> On Tue, Feb 10, 2026 at 09:02:53PM -0500, Richard Acayan wrote:
> >>>> From: Nickolay Goppen <setotau@mainlining.org>
> >>>>
> >>>> Add compatibles for sdm660-internal based soundcards.
> >>> Why is it called "internal"?
> >> Yeah... I am pretty sure there is no such sound card. You cannot have
> >> sound card internal to the soc, because you need the external components
> >> like codecs.
> > 
> > It comes mainly from downstream driver name [1].
> > 
> > Downstream also mentions it as int_codec [2].
> > 
> > There's also an sdm660-external sndcard [3].
> 
> It seems like "external" means "coupled with WCD934x+WSA881x" and "internal"
> means "coupled with (digital cdc on SoC and analog on PMIC)-over-intI2S plus
> optionally WSA881x".

Interesting you left out WCD9335 (codename tasha), is it never used in
production on SDM660?

If it is used, the sound card might need to provide different
configuration (e.g. channel map) based on the codec, or we might at
least need a separate sound card driver for SDM660 with the tasha codec.

If not, a single SoC sound card driver can provide codec configuration
based on the port without checking the codec.

> I also notice some details about a WCN slimbus channel (bt and FM radio?)
> in the internal one.

I also notice BTFM in the external one, on SLIMBUS_7 and SLIMBUS_8. They
don't conflict with tasha or tavil, on the other slimbus ports.

