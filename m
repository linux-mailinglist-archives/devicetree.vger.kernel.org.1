Return-Path: <devicetree+bounces-267039-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBqtFX2UmGlaJwMAu9opvQ
	(envelope-from <devicetree+bounces-267039-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:06:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEAE169921
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 18:06:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10EA83037EE1
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 17:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 692BA307AD5;
	Fri, 20 Feb 2026 17:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="KkGPHAns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f227.google.com (mail-qt1-f227.google.com [209.85.160.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F09033064B5
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 17:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.160.227
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771607133; cv=pass; b=HJKPlC70MVMN8hL7saxxu1a2s5nO47dfV5M7x4vsPa+1N3klbFHj3dm4CduN6semiUvV3CpWeGCNAkonawsYb8T07agwIZROKLKQXlnW2hcfMxUlS+n+LOdUGbpFznJFDt9H4Wrw0XicyqNwn65U4Vxvuaw1NZhUaaDOMIbiJmI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771607133; c=relaxed/simple;
	bh=WgUNmPToaK2aNkL5f+7yz67R6JPYwjHW6aODgXXp4+s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F/yhiZ9WAn8Ipls5h71V8MXwlBYSVfWb/RgmyTz6q8/+4/41Et3JBObGwsvYruwrWXIo7lcwTwCcy5kYawqiuHtpMVOgu38PMw8/Iv/OC64CYHbLalBTRcNKyoX6K8ifvJgkuRG3/TNQbrqrL3hAl+Bk0wZAbKKCeqjiUtmy/H4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=KkGPHAns; arc=pass smtp.client-ip=209.85.160.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f227.google.com with SMTP id d75a77b69052e-506bad34f51so17844761cf.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:05:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771607131; x=1772211931;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhPh7Zz+z44l5ejhpK5PvbZejTs2fpqZLMDxsV+S/vM=;
        b=A3jq1bUo+iiisKKKEicJkxGwgYKhZjMyOlo/d+jFu3A791IiwQeZ3UJGFFnG2UDlPn
         1dmanXGVikl/JxmBUq5lGEcu/QUkFiTRdsYp8KRQukNI1ixiNLqdtmW21sPMSIeBcJZf
         tGa6xx0OGk3eraHDjXCzPUifAFV2meDm/CQDQMnnuWdcjVlLVYIEHqWX0VtsSLk4nXeI
         1teinWvGCKyu+HGEgW0miXpjzna8eRUFcyBy+hQ8lrPL2OeQrldIWtLEhDLqdLz/0keg
         gM3vNjwLFZK38n0hCVXalO2daSvHV8M9bMS8F4g9YyTd5suC/pkybw4/gUIBCHwOYCMi
         Uu0g==
X-Forwarded-Encrypted: i=2; AJvYcCUGsFM9S5D9Rw0L8kDO2KhneI/uDHUPtsmKGiJZtB/Z/ewy+GNIO7WfoRyhWakXPn9LWNTfsG/ih1No@vger.kernel.org
X-Gm-Message-State: AOJu0YzexF19eBvFhysLkHruTVuxIbwo61gjsypPmCBHwflaE9yAtETs
	eoDaHHZ33rdu/iGuN7BDvTuerIsQiSb4PuAARaFpJY3Sz7iKLzmBUTJuOGVPNxZ+toLoQOEFEns
	odgRM9udUrmrI7qE1qrPI4zCsUc2JzL3juzq588ZIy9HR/QbTknZrl3hwrqBknRFw1bWyuqTeTZ
	24b/LC6Mv4JwulPw1XwP45VF4E3lLN7lPAOzc3OtDq4WqHQm8TsC+4dBMOq7ZHpIQ9SWhZvu5GC
	BQOZaFqaLK+Dw==
X-Gm-Gg: AZuq6aJo085auBu6rtgBSMYoonnZ+EZiZYSLMIzb8w5VoiMlGlq1jZY4MmwkTXCHuqm
	eFoxgJnuVawEEQ2dSHAi1YO/+Rd+A++IxDwFz8GJvLIhyPuaHkOWUj6HTB/kZMYA/eHFprFL0Be
	WDcEnI0ggG+TKf22nZStFyZZO1ZPL8c62l+W7hdMlIiYW4FmSMe3OmDCZo7cvao09rYs5FSgcVQ
	9T89LNvcL6kKUU2sr4zYN53jATsHNePaDwd8W1AEGvkhP57mQZNcdO0NxTmiCk8jAFMg8UHqEw8
	h541ejnExaAeUFb88W4Ci3xBtmMgWzU7Li/Wv1rFqSUzfRxFBsHHN5Dc1vrczdCA2rDTOX8ZgTE
	+9J7k78TS4l+qVIErzHLHn2iw/fSxRK/5VMqnJr5ECDcfpCJtCIGBT4+geuqQV2aTw5AJjiBNsR
	QkGt+DelS1lBo2L8ZRb77kMzrH/8956C1TB7uWl4lJgaOAeToagsPDwA==
X-Received: by 2002:ac8:7f13:0:b0:501:467d:17e8 with SMTP id d75a77b69052e-5070bcb310dmr6882811cf.61.1771607130538;
        Fri, 20 Feb 2026 09:05:30 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-25.dlp.protect.broadcom.com. [144.49.247.25])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-8971cd73992sm35518606d6.26.2026.02.20.09.05.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2026 09:05:30 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-124a95d580cso23964578c88.1
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 09:05:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771607129; cv=none;
        d=google.com; s=arc-20240605;
        b=lUjAtb8uGy0Zux1Dulzvak31IZ2wk6zdstX3lU7Bk93HAQ/zs3JopZ2eEoKal9Mee3
         Cu+MCzzKFz9PsILlQvBoNm7qIW2hhuNHWLwFO1OB4QbFxfZPNWmjoNPSWOU+hRLouhb+
         GOFKwi9X1gG6HkOg7okAxELw1s2lXbShTwwHx684Hs8BED/CDVSPimqp3jPyO+8w2jp9
         /BFCe4ERp8OJBaN8wy7ZieqQ8syCk63MCI+F2gHSLh7+DXn6WWoc/lYK/diK9fVaOFbS
         yfmswngvoe+hIylZiwZtnHwL/3s86BWHAYp/XL3yYiBcmEvpXOtqMxbiHNcpzmZNvyq5
         qEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=NhPh7Zz+z44l5ejhpK5PvbZejTs2fpqZLMDxsV+S/vM=;
        fh=h+5eVGWLYhktEdEuJal9teG+Vb5LWL7h+GvrQhUbHOk=;
        b=E5wWI5x8JZL4Ox9YRRaVAA0JmfCbYyQ0TjzQGW1NSoZzfO32sEDvcLvHBbf4mjzVQp
         U3oT4EYhsvB0s1mVOpnC6bQ0XBOEFM6hj5w2JgILQ4l7zO+mFx5e4FZJbHxWlZ1xi182
         YIHcKZFT2/PrwJxa4Kj49SL6vgpgKFyERvBhGmamfX2VGmB2hpb+NCcwPzhLbMFZm9c6
         S+s3b64xfAXEzT6tvz9LpcbG415Vl16bbWi8ckV+SoNgzmvvZhI17smwT99q3I51NqQD
         QXMkfpfNeGpL2vSfHqS3kNTeoRI3kRhSLJ1+q7+SvXbbYetSQN0RxmBL8RdGvqVPD4Wh
         QbuA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771607129; x=1772211929; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NhPh7Zz+z44l5ejhpK5PvbZejTs2fpqZLMDxsV+S/vM=;
        b=KkGPHAns8k7lj5+EEfS21QXZXLS3uIR+o4QQy5uTyCTpVERN1Pzg3hR9mK4ZoTZGm1
         J1envz3pnWp4II3Jokg277Y8CX8uO/82jnXDZ1ulVTBVHqZvzH/oiZ0UT7cZMavBXVoG
         k5bkLunHc6EVWXvPIdJpLi5IYNRuqJ2pBTpxQ=
X-Forwarded-Encrypted: i=1; AJvYcCVTT1FX1Uf52XzNf7d/DK0/zXKPCCR1hwGQFIsh5KMk7IOPQWQ9femS2ptcqPBbECDSmDZk8BBwyOQU@vger.kernel.org
X-Received: by 2002:a05:7022:6607:b0:11b:89f3:aaf8 with SMTP id a92af1059eb24-1276acdaa4fmr103621c88.4.1771607129047;
        Fri, 20 Feb 2026 09:05:29 -0800 (PST)
X-Received: by 2002:a05:7022:6607:b0:11b:89f3:aaf8 with SMTP id
 a92af1059eb24-1276acdaa4fmr103604c88.4.1771607128549; Fri, 20 Feb 2026
 09:05:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260219215702.63321-1-kamal.dasu@broadcom.com>
 <20260219215702.63321-2-kamal.dasu@broadcom.com> <20260220-agate-okapi-of-recreation-3cb930@quoll>
 <3e4a18c4-7d31-4fba-80a9-5eddda7aee68@kernel.org>
In-Reply-To: <3e4a18c4-7d31-4fba-80a9-5eddda7aee68@kernel.org>
From: Kamal Dasu <kamal.dasu@broadcom.com>
Date: Fri, 20 Feb 2026 12:04:51 -0500
X-Gm-Features: AaiRm50jssNl2QlYgPF9o8fJNaSvEuLUs8-heVLdJolLvKmZHuSRtYZl_ZuI-CM
Message-ID: <CAKekbesh7whKVLeczN2dfz=HD7eM5XBrq6BHJWKEVpGCyVVDkw@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andersson@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, baolin.wang@linux.alibaba.com, 
	florian.fainelli@broadcom.com, bcm-kernel-feedback-list@broadcom.com, 
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000a18949064b446d08"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.76 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	MIME_GOOD(-0.20)[multipart/signed,multipart/alternative,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267039-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:~];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_ATTACHMENT(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[broadcom.com:+];
	NEURAL_HAM(-0.00)[-0.943];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:email,broadcom.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: BEEAE169921
X-Rspamd-Action: no action

--000000000000a18949064b446d08
Content-Type: multipart/alternative; boundary="000000000000944391064b446db3"

--000000000000944391064b446db3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 20, 2026 at 2:31=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:

> On 20/02/2026 08:30, Krzysztof Kozlowski wrote:
> >> +title: Broadcom Settop Sundry Block Hardware Semaphore
> >> +
> >> +description:
> >> +  Broadcom settop SoCs contain 16 hardware semaphore registers
> >> +  (SEMAPHORE_0 through SEMAPHORE_15) that provide hardware-arbitrated
> >> +  mutual exclusion between drivers running on the SoC.
> >> +
> >> +  The semaphore registers belong to the sundry hardware block. The
> >> +  node describes the semaphore register range carved out of the large=
r
> >> +  sundry block address space.
> >> +
> >> +maintainers:
> >> +  - Kamal Dasu <kamal.dasu@broadcom.com>
> >> +
> >> +properties:
> >> +  compatible:
> >> +    const: brcm,brcmstb-sun-top-ctrl-semaphore
> >
> > That's still not SoC specific.
>
> Heh, and I already asked for this at v2!
>
> Do you need to see SoC series in there, or you are looking for specific
structure in device tree, I have looked all the preceding hwlock drivers
and its inline with what they have in there.
e.g. +    const: brcm,brcmstb-7445-sun-top-ctrl-semaphore


> That's wasting my time, read again v2 feedback.
>
> Can you please point me to an example?


> NAK
>
>
> Best regards,
> Krzysztof
>

--000000000000944391064b446db3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 20,=
 2026 at 2:31=E2=80=AFAM Krzysztof Kozlowski &lt;<a href=3D"mailto:krzk@ker=
nel.org">krzk@kernel.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">On 20/02/2026 08:30, Krzysztof Kozlowski wrote:<br>
&gt;&gt; +title: Broadcom Settop Sundry Block Hardware Semaphore<br>
&gt;&gt; +<br>
&gt;&gt; +description:<br>
&gt;&gt; +=C2=A0 Broadcom settop SoCs contain 16 hardware semaphore registe=
rs<br>
&gt;&gt; +=C2=A0 (SEMAPHORE_0 through SEMAPHORE_15) that provide hardware-a=
rbitrated<br>
&gt;&gt; +=C2=A0 mutual exclusion between drivers running on the SoC.<br>
&gt;&gt; +<br>
&gt;&gt; +=C2=A0 The semaphore registers belong to the sundry hardware bloc=
k. The<br>
&gt;&gt; +=C2=A0 node describes the semaphore register range carved out of =
the larger<br>
&gt;&gt; +=C2=A0 sundry block address space.<br>
&gt;&gt; +<br>
&gt;&gt; +maintainers:<br>
&gt;&gt; +=C2=A0 - Kamal Dasu &lt;<a href=3D"mailto:kamal.dasu@broadcom.com=
" target=3D"_blank">kamal.dasu@broadcom.com</a>&gt;<br>
&gt;&gt; +<br>
&gt;&gt; +properties:<br>
&gt;&gt; +=C2=A0 compatible:<br>
&gt;&gt; +=C2=A0 =C2=A0 const: brcm,brcmstb-sun-top-ctrl-semaphore<br>
&gt; <br>
&gt; That&#39;s still not SoC specific.<br>
<br>
Heh, and I already asked for this at v2!<br>
<br></blockquote><div>Do you need to see SoC series in there, or you are lo=
oking for specific structure in device tree, I have looked all the precedin=
g=C2=A0hwlock drivers and its inline with what they have in there.</div><di=
v>e.g. +=C2=A0 =C2=A0 const: brcm,brcmstb-7445-sun-top-ctrl-semaphore</div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
That&#39;s wasting my time, read again v2 feedback.<br>
<br></blockquote><div>Can you please point me to an example?=C2=A0</div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
NAK<br>
<br>
<br>
Best regards,<br>
Krzysztof<br>
</blockquote></div></div>

--000000000000944391064b446db3--

--000000000000a18949064b446d08
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
H0K0rs+X8O45xZIUJlxzf5UZex3BLi1f/H+08rSQULWEtO/ECwkFod2DIzSX7fZdz5RQ1PpziEOp
goo/JZPYIeCmgt3rIyvMuupj8Ymb0J/velhpXfQuYUM52viw2nmqVcxCwBqyM3Iq7eI4xtEOFRmR
wxSizd3MSQMf6GCHA4/B/6ttnxhGAr3utaOU+x/RnzG0gPLTW1XRAQ0+GVc/tGFdI864OG1cyrRl
GvBnHJQSAFOIKwYrUk2oFpgMbafQ6osCAwEAAaOCAdswggHXMA4GA1UdDwEB/wQEAwIFoDAMBgNV
HRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3NlY3VyZS5n
bG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEFBQcwAYYt
aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1UdIAReMFww
CQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIBFiZodHRw
czovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAyhjBodHRw
Oi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwIgYDVR0RBBswGYEX
a2FtYWwuZGFzdUBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAU
ACk2nlx6ug+vLVAt26AjhRiwoJIwHQYDVR0OBBYEFOV9h+N/T9ZsJ40qRxh7NYYD+N6MMA0GCSqG
SIb3DQEBCwUAA4ICAQAKtKh30wv1/30230mCimgUjMWQE/LImRmyfDgrp2IhBVS6mDun+wH8thEB
WhBHQMz3gsGixU4ZBJG72eWi39IzQ7CGnisJwA0+hsGaGg03AVtFtqo1rXYRZ81MEDOb6BPYLigJ
RsHbNmrUGR+LsGeUwOWUeRXqBrYaYFrkgHKvVK1NEewv+vUY08n4tsezO3jq0HKhVDY46bMbf8vL
oQqqhtcQvu2+5FK2jpUayeubpzPwobjEG61RIhBvM0KivY4CB2s9A7qgjL1XBycAybIvG03BbFoT
t282FqXwk9JU6YihLlt+hpzO9UF7E8GZYlQlVIZOLOvytqilhua+2h77Yy8Jz/FJyIXKuaLPtvb2
SC2shL7jF28kQbP3QUKwAig+cxwbpngnUkd9D9cXSHVq9PPwYm0A4eAO0YQ/80Uq20+gXF++g0sy
NKrrV3i0T1dbCd86miGDKvarGzjh7pdsdwNY15liGP6Orib1tnWkJcbtP1rJty4r/mbbxcK8ILO4
IvTGFG6BfjJ+La0aRt69i1fQmjUWHLwzkLNpw9cJH8/MONZcEJeDkq9WELSyy29bagStk5KHu7NO
TH65sZg+i/4qmj3DEeEGTr/Shzp4YWSNn4W7NEelr0VgDlwa7xqlwZjXxG4MIJqy0SsQlAwEXtqd
nH2FpJfzgAetkuyU6DGCAlcwggJTAgEBMGIwUjELMAkGA1UEBhMCQkUxGTAXBgNVBAoTEEdsb2Jh
bFNpZ24gbnYtc2ExKDAmBgNVBAMTH0dsb2JhbFNpZ24gR0NDIFI2IFNNSU1FIENBIDIwMjMCDEca
ZUGCu6d0oT1M+zANBglghkgBZQMEAgEFAKCBxzAvBgkqhkiG9w0BCQQxIgQgBg/So9ai/HtZZdOZ
Sb7r8n64JNeVDUXOmS1NUPGfy28wGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0B
CQUxDxcNMjYwMjIwMTcwNTI5WjBcBgkqhkiG9w0BCQ8xTzBNMAsGCWCGSAFlAwQBKjALBglghkgB
ZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMAsGCSqGSIb3DQEBBzALBglghkgBZQMEAgEw
DQYJKoZIhvcNAQEBBQAEggEATjnw2gW8+66knMugg8WG2RIaSGSHMKCIX0peV7qSesYCR7sPdZ7e
7sBCj+Dg1TK6DofzCwwNTEay/2ddTON28I+5FoT3HZYMIkOwdNIIu85pJXvq1FNWbRw5zaZ/fkz9
yHUDSA4B8aaR7L9KzX248GkoSkRD8FsxHZs3SSdmoyxVdArLhhYO44bY3uhFkA7r74+uXvaoDdxp
LpLBFOd14ZWwHSvbHxUd6fYNOIFbPyh8aWDxm+5aoqIBHyEM4cGSDVNqgqx4s7qHPdpCWcpIZ02q
X+AMac8l9bDOB2NGL4bUAmAkTogrt/fl5BQL5BC64Cfu+ZIS/gb/zQaXybg9kw==
--000000000000a18949064b446d08--

