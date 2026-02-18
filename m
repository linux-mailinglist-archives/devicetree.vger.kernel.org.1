Return-Path: <devicetree+bounces-266305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yN/fGL8elWlqLgIAu9opvQ
	(envelope-from <devicetree+bounces-266305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 03:06:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2469152A1C
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 03:06:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D12D13011749
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 02:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442ED2C0F8C;
	Wed, 18 Feb 2026 02:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cvJn3KiX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4669238159
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 02:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771380412; cv=pass; b=S025DPgtum08X03trDJYpFaOxV+LtKEje5CLWH1zNBvMYiYqPq2ZJSMwNjviYVWJIKC44+VXVxxauQDz27mfd8YScrq/Wwa5YFl2kCjAPPlFOSay7Gj5XgjYQx4jXKUmNKQwa/jm/TL8Y7+4Txhytxz4gVdjulUy0ZDaAaTfxGw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771380412; c=relaxed/simple;
	bh=M6NCi4rhy/mIRioIeYnEztP+rrp7HjoTf4jpdqUafkk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rssE25IvJOrv64CvAxshNZu7ujcF2ZhUR4RkWosOwUHS7Vfqr8Xf3F7JKJ/lLRNuIHjjsw06Ar2mg6b+tQDXL3pMnjL5Zgs6MEENVsUWHIac6TWoE89BSuxQ6tpDF1z/Nw5gf4LuzreUZpL/ksD5fhtNQVtF7ASgzqaW4wur4+Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cvJn3KiX; arc=pass smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-385e7cafef9so39599791fa.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 18:06:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771380409; cv=none;
        d=google.com; s=arc-20240605;
        b=fri8g4Y7tzFPn7n8hv7CkExtdldyMSQP/k1YN56bndmQsoCiavYH5fB5shgsoYWc9J
         avrMbhm8DvXVpvIOMDfA0jrBz4g2iHFhLQyhF0BPIpqKunrosKBU5LhJjMD0SWfuCS14
         Iaqh/qhFzEKIsIcAn2v+vgDZ4/GQIjBIBjt/9RICLpvw/30rQyLAHUCGIXIQLQcC4qQD
         dHuW9sFkp+2dG0RM0D/6CTGNink7/uWWxFhANUWUwFvqLnhrLBNpWIndYJzv+i2bdJHy
         wQGm8XKO671kKZNtE2zhW6bwP5XReJU01I68M0HE6hxWlKXa4LRFBobDCBLTlVEnXcss
         sAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZCF0RDcQyUaSEbuyiR76kjbm62t96nDS6KjleK6rA6I=;
        fh=PH/r6MQfIT7LNsfd4WfMoqF5wXaHNsoKnYNqdANEhgo=;
        b=Rf/unS9Y3fYWiNvPXWb02gJ8NSQy48z3lK+bA8FzaUpGJzkg5b9DNwPPO529aTaVbO
         TjZyCuIhuS/z9J0Oo6L9ogEyEdCYM3be5si6Axf0q77ceb9IbZFcczNWr8b20izpuzpu
         ROGDccATbfpjOp4smeOHetnF7RFxF8G6+mqisihW7EOpAmTZi6ZNlAQutC5LnSIcfDVV
         UfecjhzBpo9ptlV7xZ5OV6Ezg2k8Zu4n8EsUAP2aWA7B1MH1Mog45G4Eb7Kk6/ALa1oX
         Yh47TQOOq37G4KcP3Gctat6w80roD35XVVNphmtKD0bKpouP1G54Ip/JE+Tf+9fK/c89
         dkNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771380409; x=1771985209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZCF0RDcQyUaSEbuyiR76kjbm62t96nDS6KjleK6rA6I=;
        b=cvJn3KiX87igytLvMCwopyNPmY4ZN5XR/01sZ2uY13EzJKr3blbosweSa973qqbnKO
         iGtBJqtaQzLxbIa8ISKrg5dbGXrRAQhwSIyN/Wbe3z8VQvzQOM9FZzDM2rLawW33kmms
         g7NCxqg6MwmlW9xwQCoeM0DSAZAqli5Jz4JToiRbU5LJJIKg24CUkJlADDathSNQaxR8
         zXWUf083hp15PY6A9iohOZV+u5CXxMu8bOycd1TV5r4rVWBI92d/1q59Wp4A7oaCSFsS
         whCpT2ohrB9kOkpY16sKRuS5jEglT37y5TwN5oOa2uPHj8/s7ZQT8OxhufnPmmmO61Xc
         1HHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771380409; x=1771985209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZCF0RDcQyUaSEbuyiR76kjbm62t96nDS6KjleK6rA6I=;
        b=vcykCx4KFq8CZZS0M9EHxZ26WCU1KnJUvOd16Rm/TG6N9/xbEgjjtZrGpeaM9ryHC8
         iWLQxG53DXHdPGM5xZjTqr9ET2NhOJmm8WG7rD/EfSz9SmzroKvcQO+0mpeqkq9nXWxl
         VxWrEFhyOrdPL461VwfWcwSNIBpuRInm/7yqOfhOToCBHTIcFX1TlCe7/N9Tu/GCTUCS
         tSXk/e0O7BnznoOp6/Ia7FjMR8X+x7TzXVglfdBUvbV5vNt2Yzn2BDfzkMNHBrAnTGqC
         lYo1dfjlTjSnE5ovvZxTLY+GU6+RpaRrk7vDGY6WHz65caa5NMC9THhj6LVfECVkZrro
         rIUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUf4KHbiD5U4YBKa4td1UABPfvm1x+kceq/dVZw11UzLHbwhRNhkHtfLP20IObQ7gJg3ilK+CO5m9Oe@vger.kernel.org
X-Gm-Message-State: AOJu0YwRGkPd7JrcEot3q/S6K7SNtb0CpmT1owpcwBrj3tHraRSGSXOn
	24xU5RwtoSvt8De35JIwH25uAcRRWkzvPg1YvThBzM7Hs1OrKzVbB5Rv0nSda/lN2GuaGK4udnW
	/Cn2W8nfUnkJQi7De5uqNOSCgyJOQWhg=
X-Gm-Gg: AZuq6aLawetyr18TAwXQHwWuJa8DaowfSKq1V688d2fS1cUZU0ikIQjS+pRPnB+lFJs
	sMjq0oV/mn6Qk2EC34NCb1UWIAjLzGUevmVz4Mpe6X4geNaJ5qS0gNqeGnlK9f4rWTXqJHSGR4M
	Tx1kZQfi15kWgjwEOKyRBRi/TtVzgrR0xbM7M/rJ2Uckc/Z20I29DfEyPVsMMlCjwcXb0yCJNPo
	TnXoIFJGj4ds9oczOQk5l+o8peJuu+4xIwN24YqUdzeN7WkEY4BSMDH+6EOATFwnNBzw7QGLjbu
	A9Ng3pClu5u3xCncyMA464MibRRVpnHKmp8cq3MYdsa/rB3TWa/Zm0Nu+3KH2LNcGF/mvoFwawT
	/3sE=
X-Received: by 2002:a05:6512:1052:b0:59e:58fb:da42 with SMTP id
 2adb3069b0e04-59ef97fb163mr4855112e87.18.1771380408876; Tue, 17 Feb 2026
 18:06:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260207-sm8550-ddr-bw-scaling-v1-0-d96c3f39ac4b@gmail.com>
 <20260207-sm8550-ddr-bw-scaling-v1-3-d96c3f39ac4b@gmail.com> <2c2a4e27-fea6-46f5-8d8f-b5869e8dc54b@oss.qualcomm.com>
In-Reply-To: <2c2a4e27-fea6-46f5-8d8f-b5869e8dc54b@oss.qualcomm.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Tue, 17 Feb 2026 20:06:37 -0600
X-Gm-Features: AaiRm53CguSsQgntYlxtDYA_uwi5z7LMqcd0-2UNQ6k5OWG__siOmUzm-gGs_wk
Message-ID: <CALHNRZ98kp_uymSrjAGyCSus17tP9iGMYZ6T5HaAecEFyrw3mg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sm8550: add cpu OPP table with DDR,
 LLCC & L3 bandwidths
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266305-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: B2469152A1C
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 5:59=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/8/26 2:28 AM, Aaron Kling via B4 Relay wrote:
> > From: Aaron Kling <webgeek1234@gmail.com>
> >
> > Add the OPP tables for each CPU clusters (cpu0-1-2, cpu3-4-5-6 & cpu7)
> > to permit scaling the Last Level Cache Controller (LLCC), DDR and L3 ca=
che
> > frequency by aggregating bandwidth requests of all CPU core with refere=
nc
> > to the current OPP they are configured in by the LMH/EPSS hardware.
> >
> > The effect is a proper caches & DDR frequency scaling when CPU cores
> > changes frequency.
> >
> > The OPP tables were built using the downstream memlat ddr, llcc & l3
> > tables for each cluster types with the actual EPSS cpufreq LUT tables
> > from running a QCS8550 device.
> >
> > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > ---
>
> [...]
>
> > +     cpu0_opp_table: opp-table-cpu0 {
> > +             compatible =3D "operating-points-v2";
> > +             opp-shared;
> > +
> > +             opp-307200000 {
> > +                     opp-hz =3D /bits/ 64 <307200000>;
> > +                     opp-peak-kBps =3D <(300000 * 16) (547000 * 4) (30=
7200 * 32)>;
>
> I think that entries below the first in that memlat table should use the =
lowest
> frequency (i.e. if (freq > tbl_entry.min_freq) { vote_for(tbl_entry.bw) }=
), etc.

Let me make sure I understand what you're saying. Given the following
example from the downstream dt:

        silver {
            qcom,cpufreq-memfreq-tbl =3D
                < 1113600  547000 >,
                < 1555200  768000 >,
                < 2016000 1555000 >;
        };

you're saying that everything up to but not including 1555200 should
using 547000? So in effect, round down instead of round up like I did?

> You can retrieve the list of supported frequencies through debugfs if you=
 apply
> patch1 from my my in-flight patchset:
>
> https://lore.kernel.org/linux-arm-msm/20260108-topic-smem_dramc-v3-0-6b64=
df58a017@oss.qualcomm.com/
>
> via /sys/kernel/debug/qcom_smem/dram_frequencies
>
> Konrad

Aaron

