Return-Path: <devicetree+bounces-268756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHfUBBAkoGkDfwQAu9opvQ
	(envelope-from <devicetree+bounces-268756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:44:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFC61A477C
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:44:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 39F1E304A5AC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:44:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D1343A7F5F;
	Thu, 26 Feb 2026 10:44:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jn5LswYe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2603A4F34
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 10:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.176
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772102660; cv=pass; b=UbgGDNzp/stqg9VvUfw4z2WrBvMIV+AmREzWbYGGzfHWa52f3uCzYDxw8U2+iIAia1T8FpDkh8+xzmcQLF5mfMXYh/MN+4DevM7uxb1+0XPMo+8vfcQPNPDRQrlAf6Yv1nImCe3Kb04l3RUd/T2KdrUfgkIcqmwaZ+scLLHJAE8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772102660; c=relaxed/simple;
	bh=3Ek7ZWKgLpFhHdL6kAq6xhGbaGNzo41GNvmmzaf9cmc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I+Vc8XMEA4Xvu6fzaoCFWrwI79nler4m8JHa54qAqxMTi2W9kwT30OrRqmFzi1i61lfVDtu0vPAXu42D20BkRzI5Fb1aWGX8CHl4IYRJZwZeNOOALix/x6Bl1CUZnKF8MQF4Gn6dkfIjVe3kyTeAU/lKlo1sc4DXbXW/ze6p2WM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jn5LswYe; arc=pass smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56a8da2faf4so606697e0c.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 02:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772102658; cv=none;
        d=google.com; s=arc-20240605;
        b=XDeNQDoQUbtVPh69P/HbcYUKOUeGZm5ByOv3+SbPrruUAVuqa3ka35iK55mAtQzRp+
         YBC+QBdc/QLWz8n3AZsVFBIERr3ZHsyVisQ7wORqU0dbC3XXTajHJ2n0l8tzM9CCu3V+
         cCsB7QUfmfHoaRDnNbvpwCYdsdhDGeekfRzrx/VbE+4JQLajRHVvLm8IZ89jbwf8NR+5
         GihSE7mNPDLPbKHUmeYkPi9yJ2nwht72Pko5nEnsSI2K5JBYbLksa/eNKDkGP1WlWm3n
         8nQcD2R0wXMLp5kv7oaj6t1K+V1LW49ZtHyWJLA2s4QKENJuWiU2kXLcCn7VpM7GLmIH
         L50w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=cD12pgEfdQ5/Nd9GA+nMEM8ckUbIwEu5Vfttv9M4WJg=;
        fh=dWSdxYn9amdLzIKEbZdYQBRWCAnIhljRisI1AbH41Pw=;
        b=Rwx0IC0rYZUu7SZlSFeAOrD9H9rqF1GYox+Xq607PDtCSwmDpcz2D2R7XczrHuuB30
         SW30v5T2a2/ZcYrMqlnFL1fNo2AAb5jcVjoEzrxQq8ATR3iFcw9gKsreeFw+Q0VKCMyH
         YlvUIN27GhU3FINiiRRDt4zc/3At2zegJCzC7It0bKprc1OBqEM/b+0J4a6FM0GfCyvy
         1BsBYo4K0yPJsMqc4M0eCq997ppFUXH9NRkYYhH18IDf2GK4gsGWbN9BlEBK/Z+doKlQ
         TOnC+pTOJlCEMs2CIeE4y1944ttHrz2RMYAeQsTTSqOpO9kJSbtzFJLqBT7EORu5+Zhg
         J9xQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772102658; x=1772707458; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cD12pgEfdQ5/Nd9GA+nMEM8ckUbIwEu5Vfttv9M4WJg=;
        b=jn5LswYejxMb75SoyOtWf8VluBupAqUkJZljzwLm0kz+5uaBeN63c1VsnRjl/np+wM
         7GCc74IVgUbNBppj8pwyz7QHEHoL/DP4QDIy0mQefny9Sx9j9Y6TGEJ4IaW4fUOtP1yV
         p6HqWRAhNQuEmX7CZtZWSjwS7yo7BEVj8HRf+afjDyTRVxd6EMaiUdm7fqhX4MpCK9oO
         dCnuOWG0XSXTFgYrxkGE8c7QMBY28DiSZESuvwCFzHad5oMgT3Z9hNHHfKD+DZAFh12J
         MsPqbQ8P7c8rau4tijNApqf73p8T2mTmKIJnjzVpuQouWOGtkeEHsP77oQAVhO8If0l1
         uKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772102658; x=1772707458;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cD12pgEfdQ5/Nd9GA+nMEM8ckUbIwEu5Vfttv9M4WJg=;
        b=AZqBpbPo9/Umzcmepm7UAmTMVBfUvAmUSfy2jvtLI7KA7b8WPjex/pXFIvwzLFkAmC
         +GqRSc0lZq67hOl5D/CrkKdgSC2qdyuWu506p6Y18KcXEDrz09bM+yWn2xdUzL+x+Ny5
         4qgYRcgJVzKUNuiiBoajIDKUYZ+Io/MMT/5z+gyc0BQC4kOejJ8qRozFPn+e0x1LsiSA
         XffEjt9dwYFjJmc73MdVDRTHbWsbv0q0EgxDqetH8wbQR4tga4M1Iyj8e1iGuGjM+JP1
         Z6mF5CLWqaqKo39MJitI6dRQfu7DrtN3ct1QRempdJXYi/0l6ntsVNrK4/4VU1hu5vcB
         DXFA==
X-Forwarded-Encrypted: i=1; AJvYcCVMq5wZ7L+4/JAjd4WJOHUeUNRHS0+qyHXMYg5wCmv2jsxz7tGBANz+7q9ZWI4X0DboeGeMjMuqTDvm@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3QO8aG/kFJCGyZeBZUT6CIwR4sU2/bjb9im9t8MzMzQ10ZnL5
	dvU5V7TKbh1i6Ue/fUYQUfLT0EumR3T/H0zE2uHZF8hSut5IeN4NiF/SbxJKWAZ8oNXhIJEdYyR
	okhWZGDjmqguoSHjpmxuRA4/ZxVKWSdY=
X-Gm-Gg: ATEYQzyFIwnEvoKbV94LWtKuCVnKjYEbMRFvuGzr8T5ebIJuEbT9qDYHA+t7BrZYiTV
	TAq9UXEi0QWJvo4kqEsbmJTZN26EgvBGVpebkgsCIUp1BRgf1j4Z6EJI1rvbpZ9Ht7hx/Ezgj6l
	vqgBTCySVGJLEoJ0pHGd1b4bA0n4zBiIN9TnBCP+9ey7/xEFGGoy436TvmuYfMhdHM8FcvJHVCM
	S8DHQB+OwfEvlihPUa5AHd2lhg+wfxQ+78qECbHE/Vl0IvjWgNK72iSMpAIO+ZwMv9lYLlQ7l+K
	0UdOt7s=
X-Received: by 2002:a05:6102:418d:b0:5f5:5c2e:59ba with SMTP id
 ada2fe7eead31-5ff140ed02cmr2205194137.33.1772102658094; Thu, 26 Feb 2026
 02:44:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260225054525.6803-1-mitltlatltl@gmail.com> <20260225054525.6803-2-mitltlatltl@gmail.com>
 <20260225-analytic-economic-parrot-4c3a45@quoll> <5617b6ec-b1f7-4f3d-abda-d7142c323759@oss.qualcomm.com>
In-Reply-To: <5617b6ec-b1f7-4f3d-abda-d7142c323759@oss.qualcomm.com>
From: Pengyu Luo <mitltlatltl@gmail.com>
Date: Thu, 26 Feb 2026 18:44:02 +0800
X-Gm-Features: AaiRm53sGdce1eJ6hV-SAxn-qLkKqnA_zFO2EDrbOzCBgEEtUkG39zInYjqgp78
Message-ID: <CAH2e8h7T3Qy1f=-34SK+q=n9TRYOtzyxY8R6yKZJZGr_f+UMZg@mail.gmail.com>
Subject: Re: [PATCH 1/5] dt-bindings: display: msm-dsi-phy-7nm: Add SC8280XP
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Krishna Manikandan <quic_mkrishn@quicinc.com>, Jonathan Marek <jonathan@marek.ca>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Tianyu Gao <gty0622@gmail.com>, 
	White Lewis <liu224806@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268756-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com,marek.ca,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitltlatltl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6EFC61A477C
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 7:02=E2=80=AFPM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 2/25/26 11:24 AM, Krzysztof Kozlowski wrote:
> > On Wed, Feb 25, 2026 at 01:45:21PM +0800, Pengyu Luo wrote:
> >> Document DSI PHY on SC8280XP Platform.
> >>
> >> Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> >> ---
> >>  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm=
.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> >> index 9a9a6c4ab..9223af1f4 100644
> >> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> >> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml
> >> @@ -23,6 +23,7 @@ properties:
> >>                - qcom,sa8775p-dsi-phy-5nm
> >>                - qcom,sar2130p-dsi-phy-5nm
> >>                - qcom,sc7280-dsi-phy-7nm
> >> +              - qcom,sc8280xp-dsi-phy-5nm
> >
> > Your other commit claims it is compatible with sa8775p, just like some
> > other devices here.
>
> If that helps, they do have the same values for the REVISION_ID registers
>

Thanks for confirming this,I will add this to the commit message and
fallback to sa8775 then.

I am curious, do the PHY QUIRKs in dsi_phy_7nm.c reflect PHY revision?
I notice
            REG_DSI_7nm_PHY_CMN_REVISION_ID0       QUIRK
SM8250:     0x00000014                               4.1
SM8650:     0x00000025                               5.2
SC8280XP:   0x00000024                               4.2
SM8750:     0x00000027                               7.0(*)

(*) SM8750 is 7.2 in the downstream.

Best wishes,
Pengyu

