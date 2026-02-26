Return-Path: <devicetree+bounces-268623-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKYJFZnwn2kyfAQAu9opvQ
	(envelope-from <devicetree+bounces-268623-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:04:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 680EE1A1959
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:04:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E51223094FAD
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 07:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6809538E10E;
	Thu, 26 Feb 2026 07:03:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TrZTwkZX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNPiDZSA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F57D38E100
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772089435; cv=pass; b=ASpdii2tqktSQGq9rDggV8D6tmSYeGzK0m1ufkk1l59VAHhaG1qCgfKLORUwvezKlBMN3i4gknpHqWPVFbVjrsM09ILeyeTLlxOb2hivbPItWPTm/vxzER9zVQuwy1RNB/ELb+DwVHPoVfoKxzmobld1SzklT2jYd51OymJlj6w=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772089435; c=relaxed/simple;
	bh=cU8kstGq7wsTED11A9VZKDHW5cCpAiPQ9p/QVxV07WU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dQl5rbNJCNxzi6yGPdFyTjvlh3Xn1jvxxKydHTRP73NRczZEnC3ADt359dR8kwGkyJPMpUd2tRZ3EysjlxfjxsiMuixDH/7YEHLnwt3ZRYBFk673expLhiDJYHhwFb9YBHZ7gttxq6TXCZY8rECVMTfl3JRCq9fPIpQBS+2RytU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TrZTwkZX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DNPiDZSA; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61Q4VWBt3721997
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:03:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JLrxoSzHXhl2Gv/xx7gH4l/8foTy6gK4EWkBQXv8dA4=; b=TrZTwkZXN766VfzU
	hYO0BPsx6HaB+y4L7w1N10XXNN5xC8M5OOpnnrqH92Yx/hRuCyH57kfpar8/EEkO
	cWr5Ykehbq1TWs6G3mRRzo1MWfo4HGZrCJw4TpARl3Kxw/fsN/VaME5USFGpflaJ
	zjWknEgJlJaukFg4uyard+HSjUusbeR1D/tWyMX0N+gbt3hPyI+AGx8OpC1m9OWM
	gGrs0vqALkamusCakiWoWBqOufdD5zGmMuKZeXVht+6Ka8Q4BuunojTCIkg+/tEG
	JuQDNlsiBeBBrbZy6iQ+4Dya6yvi4qebfsnFyvlk0p6oEz9wei3XASTqpRYvMYBe
	+xp/FA==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chyvf391d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 07:03:52 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-679dcf1f680so15205374eaf.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:03:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772089432; cv=none;
        d=google.com; s=arc-20240605;
        b=GkkoqeLDLlaqzou3Mcw0XpXgaljQu6CPhwgY29i53pmO7qKDctefG0/EaqHsWhWer7
         Pzs++v+ytO4AYePBXMalJlB779GJg7Zr86n77Yb49H7vN7rYUOFOWtAIqgtMJcYxfsqD
         9tkxQewYFVZe0zF2h9R6waSe+vhLxDIQqSOOttpWIG4LL+Vi/U8xnw48Ibt3U3OKi8DE
         POvPssCxERBFKHrPRnCb+dkkziBLed0gFYgPq7W9LEEg3kXZHZi2uyRmMKrkqqj02lrs
         oAGCRKLbXwtIqvCBfzgnMJmgOWcu+RP8tCjUYzVBhBPkm2/56jXhPuN7Hiah57WZyNx2
         ptfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=JLrxoSzHXhl2Gv/xx7gH4l/8foTy6gK4EWkBQXv8dA4=;
        fh=qacZ1i7nWLjVKXc3JzJgzzuWGAiMMVwFGzEAt1Ze8mE=;
        b=VrA8pdXvoMFOvsThEA0pfZfu44Zo6L+xTTRwxuygSgVeCEDq1QYT80l8b9kXps2PW6
         kx+gn9iPb9jEHgiyZyVgNA7uuCWomKfYPhHpPqP0HcmrBO2aKF1ShI0icwaC1XEozoOu
         D8m2GWp584aXC3OX4qqIkgMeAOjIOkMFXFU8m3JYcy/fBnFC3FO4LWp6Yz5ZT2GYznE8
         dVIiXwK4AbzkB1h2c7qIpNougMu6NgVf2cHwwO0Xa8tjQFppZXnRSJVFRzPHOyXUs81/
         tMXgfJlybeMGggyWo3iamb2nkmwDF8SJf3PlTkyOf1mLUOFy1TsHxyBVkoM4yctUk6yV
         WToQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772089432; x=1772694232; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLrxoSzHXhl2Gv/xx7gH4l/8foTy6gK4EWkBQXv8dA4=;
        b=DNPiDZSAueMHbQqReqLk2SvfX7gID6B0+/tR8DbE9Ayr66T0KkHl/kVV7/cQzoMY9C
         FXjHqBC9dqFUlfiVGgGnt/Oy2BsZ+4gMM4HR8sTekHYGk0r81EC3FmnnIGzDmz5bRIth
         r5UP5yS8yolCy4wQ/w2Uf4RfnT27xZZGyuiCC9dsurAEtyLEQZhRsaA0HTLS3vku8+nd
         Ssxq3LyHINcOi1OkfmjjTF/stxjKn2nWIt3nOp7uYPoiLsuQdTJVPVWrCqtO7FwqVMiQ
         r/9qzR7NgIXZAMcapRP1efde/F4HVxGLPk3MCFF8i2LMlYwyRvd0p50KG4L+GeoQRr/t
         kU8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772089432; x=1772694232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JLrxoSzHXhl2Gv/xx7gH4l/8foTy6gK4EWkBQXv8dA4=;
        b=So3VBLIcI6zwfyiV6H9Blc3FBxW+rpG6FGCoeY1jqdyScsB6/Ho+cG895CvlbBEeDo
         5wofN6Eb7xIQg95/hLKcl/SJvDGPEbb7RbOUK3QsL8IFxVwQg1Ms2Rx8my8NwJzTXq7I
         BDLiTkPI0JwhrpN6xZiLo6Sb4fgleA/aPYtVkdx0TAW+VeX4XfaWqchnnriWGO7j7f59
         YfxSoPHjpRuhizf8t9+OuhLtou5uiWUlB2kgmZHrp7j9+V1DeYe8zwfoujQIkxsQZJRM
         DfkTut7McPQXDzZr22WKkO7Zavpm8YNY2KdgnkGNned1pE+NjvLhe4fnY24q4hIdP6td
         POiw==
X-Gm-Message-State: AOJu0YyY+PPpJLWZGi36JiYTjo7BCtieug6SwHBvXLvhCr1CmlgHoloJ
	NawdYMEUSeBIOWTozzSCbLI7kqaghgrjCh9km6luPehSyVF6dI696ycnlJu6jASAbf8TZOxkk5D
	bS9bAwHpjXFHoRColkWd49H2hiPkkDdHtzsqO2bUJPUJ3kyKIO71tPzUiV0oZeAM2kPpNNP3h/C
	boF4q8b6Od1Ovt59FvPKOz4Sa1nbfWMC1Ba9KwCws=
X-Gm-Gg: ATEYQzzekNcHPHd9Li4j8TEpruwofFNIdWSkG15BOZUaP8nXYcnrwNwORxlfakVR+PL
	OdBWDRRSh6ruFv7NjA+hu7vX/vUz31AZktXpsYeSFLiwLEPu70xl1ypGrysrY0BYxK2Mb98c598
	DAEncKgvhtL2xOtinV276uI4VAcZjZzJmaT1crBdS7NfNZUzRfRdk3gt2NcN4JG7BvqZX6Yib63
	JhvGlc=
X-Received: by 2002:a05:6820:3092:b0:679:e7b2:9fc7 with SMTP id 006d021491bc7-679e7b2a0cdmr3151073eaf.7.1772089432082;
        Wed, 25 Feb 2026 23:03:52 -0800 (PST)
X-Received: by 2002:a05:6820:3092:b0:679:e7b2:9fc7 with SMTP id
 006d021491bc7-679e7b2a0cdmr3151054eaf.7.1772089431697; Wed, 25 Feb 2026
 23:03:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260220-topics-ahmtib01-ras_ffh_arm_internal_review-v2-0-347fa2d7351b@arm.com>
 <20260220-topics-ahmtib01-ras_ffh_arm_internal_review-v2-10-347fa2d7351b@arm.com>
In-Reply-To: <20260220-topics-ahmtib01-ras_ffh_arm_internal_review-v2-10-347fa2d7351b@arm.com>
From: Himanshu Chauhan <himanshu.chauhan@oss.qualcomm.com>
Date: Thu, 26 Feb 2026 12:33:40 +0530
X-Gm-Features: AaiRm51FKm_5e4UXBRvPixo-zTWKoFuxZQdWEORZL7vufbjHjGKj8isrvlHHmUg
Message-ID: <CA+Ht8=ZSUGF9KQqy=yZ56kEDwsv3TvS6rLcMD85iwDxwOr3rpQ@mail.gmail.com>
Subject: Re: [PATCH v2 10/11] dt-bindings: firmware: add arm,ras-ffh
To: Ahmed Tiba <ahmed.tiba@arm.com>
Cc: devicetree@vger.kernel.org, linux-acpi@vger.kernel.org,
        Dmitry.Lamerov@arm.com, catalin.marinas@arm.com, bp@alien8.de,
        robh@kernel.org, rafael@kernel.org, will@kernel.org, conor@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        krzk+dt@kernel.org, Michael.Zhao2@arm.com, tony.luck@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: wPcl5YhFzPo8g5EdKfCUeq-uXA0ip3nM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI2MDA2MSBTYWx0ZWRfX3dxFjoj032e8
 leHmtbXM4dLiAQ9Xdo9dlr9rpx1AQX32b9o7SOCeAvBhxgoPF1FRJzw9OdL1rIl23Q7h1V6TDEG
 apiMDT03sX9qSDt9ROr+Ek5euZUHiR7SzaA8TlPzWvW37Z6EIiFFFkPDgRC8vC0Ay6/2Ym+/dXn
 1jJ76FQeV1DObH6SQxJoK/HC3Bphf6kwYokVLtPUKwk4cuDNvtvfbFhDBKJ/oRGB8/z30Q/fGSa
 2OiO74HsJQsjJi+EBYR3/7oN5zy0r30W+00xondkYnpN2ErsjqbZmXL7knDTFCy2RwvwsMLitHK
 f09QZTukEMkYD74pBf706m3WxozCwvBJdX4UE5IoAqfGeRzMc/je6/pd0Ry8YFTqprLdSFIX+Hp
 wAfApAe1ky9qA9sDGfrMn5npoSzlOKUv9hUA7sDjucvib98tU+oZ+0jLJ0VcmI7NuO+HwG0vrSm
 eWQEDCoEde95xBmnxiA==
X-Proofpoint-GUID: wPcl5YhFzPo8g5EdKfCUeq-uXA0ip3nM
X-Authority-Analysis: v=2.4 cv=dZWNHHXe c=1 sm=1 tr=0 ts=699ff058 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=ZpdpYltYx_vBUK5n70dp:22 a=gEfo2CItAAAA:8 a=7CQSdrXTAAAA:8 a=pGLkceISAAAA:8
 a=QyXUC8HyAAAA:8 a=is6-GLeS1cJyDfTUaQYA:9 a=QEXdDO2ut3YA:10
 a=rBiNkAWo9uy_4UTK5NWh:22 a=sptkURWiP4Gy88Gu7hUp:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-25_04,2026-02-25_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 phishscore=0 bulkscore=0 spamscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602260061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268623-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[himanshu.chauhan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,arm.com:email,fe800000:email,intel.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alien8.de:email]
X-Rspamd-Queue-Id: 680EE1A1959
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 7:15=E2=80=AFPM Ahmed Tiba <ahmed.tiba@arm.com> wro=
te:
>
> Describe the DeviceTree node that exposes the Arm firmware-first handler
> CPER provider and hook the file into MAINTAINERS so the binding has an
> owner.
>
> Signed-off-by: Ahmed Tiba <ahmed.tiba@arm.com>
> ---
>  .../devicetree/bindings/firmware/arm,ras-ffh.yaml  | 71 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 76 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/firmware/arm,ras-ffh.yaml =
b/Documentation/devicetree/bindings/firmware/arm,ras-ffh.yaml
> new file mode 100644
> index 000000000000..eccbaaf45885
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/arm,ras-ffh.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/arm,ras-ffh.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Firmware-First Handler (FFH) CPER provider

Please don't called it FFH. FFH stands for Fixed Feature Hardware and
ACPI uses it at multiple places. It is causing confusion.
> +
> +maintainers:
> +  - Ahmed Tiba <ahmed.tiba@arm.com>
> +
> +description: |
> +  Arm Reliability, Availability and Serviceability (RAS) firmware can ex=
pose
> +  a firmware-first handler (FFH) that provides UEFI CPER Generic Error S=
tatus
> +  blocks directly via DeviceTree. The firmware owns the CPER buffer
> +  and notifies the OS through an interrupt.
> +
> +properties:
> +  compatible:
> +    const: arm,ras-ffh
> +
> +  reg:
> +    minItems: 1
> +    items:
> +      - description:
> +          CPER Generic Error Status block exposed by firmware
> +      - description:
> +          Optional 32- or 64-bit doorbell register used on platforms
> +          where firmware needs an explicit "ack" handshake before overwr=
iting
> +          the CPER buffer. Firmware watches bit 0 and expects the OS to =
set it
> +          once the current status block has been consumed.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      Interrupt used to signal that a new status record is ready.
> +
> +  memory-region:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Optional phandle to the reserved-memory entry that backs the statu=
s
> +      buffer so firmware and the OS use the same carved-out region.
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    reserved-memory {
> +      #address-cells =3D <2>;
> +      #size-cells =3D <2>;
> +      ras_cper_buffer: cper@fe800000 {
> +        reg =3D <0x0 0xfe800000 0x0 0x1000>;
> +        no-map;
> +      };
> +    };
> +
> +    error-handler@fe800000 {
> +      compatible =3D "arm,ras-ffh";
> +      reg =3D <0xfe800000 0x1000>,
> +            <0xfe810000 0x4>;
> +      memory-region =3D <&ras_cper_buffer>;
> +      interrupts =3D <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index b8d8a5c41597..47db7877b485 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -22027,6 +22027,11 @@ M:     Alexandre Bounine <alex.bou9@gmail.com>
>  S:     Maintained
>  F:     drivers/rapidio/
>
> +RAS ERROR STATUS
> +M:     Ahmed Tiba <ahmed.tiba@arm.com>
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/firmware/arm,ras-ffh.yaml
> +
>  RAS INFRASTRUCTURE
>  M:     Tony Luck <tony.luck@intel.com>
>  M:     Borislav Petkov <bp@alien8.de>
>
> --
> 2.43.0
>
>

