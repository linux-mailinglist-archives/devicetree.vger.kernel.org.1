Return-Path: <devicetree+bounces-248513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C886ACD3542
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:46:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A568A300FE1A
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:44:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6566830FC3D;
	Sat, 20 Dec 2025 18:44:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XIGw/LOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B031E2E54DE
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256291; cv=none; b=cBBw+ec/d8JdGX+hefkefrL3iVQJ2kELcip35sV01r6fGgOnwIqhEfKngKrtH9knl7VWvWd6CrM8/Eh0ZGGCwno9FcbdbNBV6z6l2psCidgN5DHyiHWVwZXNdjlCKDoHrWzcXn0lY5aSv5nHwaEK+iiNPbXfSzulxwUPkQP9gck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256291; c=relaxed/simple;
	bh=0u2OR6+3xMf4RaABwsoKlyiauVyQSZz852Zfxxk7a4U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=UUaJIs0RDCSTCxcbPnCvjE0E1wB/8jVNxqLXBSPnSwhDNwzPwQlLjcqR+o4EjF4KKAKaABK7NBTE/hFbiArAUSEkAeid9jzDNDvy/qd0lSXDy17SxJ3ibI78/Ep/OPXbxmGlixBHhlOKFRiym+fMltJg52wbJl6grDzREldv/Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XIGw/LOc; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c6d3676455so1244168a34.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766256288; x=1766861088; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trzEivKudx03y5CGgz9d9cZqh7fqV05Hs29kec+vigA=;
        b=XIGw/LOcQs0At3cxgGOls8uuMTpcxxwE3ZkZDS9O2krFSnDulveLzSaS+XwaAY5ORI
         Fat2H+DWcrhcPB5+1+ZDv2pHAdg/TCfaH6f1rHOHRFVeq8frtfNFIfiyH6lVUxmRJVr/
         /KN2ychqdgiq7ffPPjrkU+tYxkxOXS1tKIIYjO3t/XFVJKxe8IahzDzwk1Dx14xyn7Jx
         vSirQZ8fEmQqPvUdBWKxZ+q9HaVQVRj9K7tGUvhT39kyHXxnYX00SeIlWwRubu3MdnOn
         /eg2CDgL/OGTDq5OIGaTrU49wtpaW1aN6eUookttsE9IYqwwK/1JsHXutbDR4vWo5L1Z
         tVeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766256288; x=1766861088;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=trzEivKudx03y5CGgz9d9cZqh7fqV05Hs29kec+vigA=;
        b=Cas0dY0Sanm3z7q9IgHGj143zFKecgLdNAo4s5KB5kEDSHrkD1DNoflSo/F+sdm7Oz
         lCVvPyUpTo9w4eLfrODyc1Ma+Q417deEUd6tUQX/+FPoBiasjgbbVI9qyxF6r3CHYYIx
         3mYvnZPXLhJ0MvEM7xFYj2H1IJ6JlVifVO7V22hma4GT4iS17PHsjTnkpFkaSx+cUqhX
         PU0Bum4N+kJyZ303T5766VTAA5g7+p5qnAbrAapqbX9yj+9IrLwQcd22nsav3PO1tL4c
         E8EnN1EUHqGUms1si3KlUZh35rtZ83LKvQoMej+OQjIIpLz06c2wMtqeVsHx7sIXNSgC
         pPRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoAkEEMEhWNd3Q2hGgNZ84ZxHJUjULlo4XVhfOe94bkjcCCPUnv7K9Dz+P76W4LYvqfwc2V1IhElRr@vger.kernel.org
X-Gm-Message-State: AOJu0Yzl44rfgTLJgLRZsiC46S/ukBFI/YvSB/yli8G9Ht5/e8X0uDZ7
	BXTCQPXn/82oPx6NHnax4/+ETj8uvYPd5oO45/d9osKy8YbXgvr8cEkD
X-Gm-Gg: AY/fxX5lCpkjLhkm+1MCyyNIkSppwmPb8iBxZjyAUneo4TqnmG9AqUfpRHgoc/J5/5+
	ELcu31ek6mP4QspyVXdru/wy8Z9G0TewVtdN3orZV9dvhrXhhZw7nipVrNaqYX39VjVGTsSBNQe
	2j2caiFdktRkNW2peJPNd0XVWcQY/SKkX+l/QB56H9HG6hhb62DAz/r7AuqboqSO52BUeoXfcVS
	m/GFSLGfT/PC+B7nj+nsO8I3c0ojq4yZPTfJc/IDDrlRx8Y0WXYzdIArOSDJCd1zIRrBg3lysbi
	AKGR4epWfDzzBJW+JsrBXbSYEGWJkdVEI1iskngqim0tOC3EWRg/vuQpGYXoymkvqy8RG5ZWRtD
	CIMYJMU+NHzSSWOcUIWmQkKH0LeY3YHMW3W9JhpuE/kHgyMZM/9nCYvQ0IqCoTpB2HRCJqCtTGc
	aSD84Rjl6R2YOvdWqxU0QTdzazYpkUVNjICZDUcT2lC3fDP7sn5Xmgz5ywmkYHsfPdQSWCN32GQ
	cvGwU7nTRN9UBonbS+GzOuNLpdQ6ug=
X-Google-Smtp-Source: AGHT+IE+0LLix2qQ2hee63jPrCqkAnrGvkh7ErNz8WY0FuIa+u/gxQ3Xhw28APg7ob5GTcztFxFk3w==
X-Received: by 2002:a05:6808:1509:b0:450:44b9:68e0 with SMTP id 5614622812f47-457b20889c0mr3266072b6e.11.1766256288542;
        Sat, 20 Dec 2025 10:44:48 -0800 (PST)
Received: from nukework.gtech (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3fdaab5ccb9sm3623838fac.10.2025.12.20.10.44.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:44:46 -0800 (PST)
From: "Alex G." <mr.nuke.me@gmail.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, krzk+dt@kernel.org,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject:
 Re: [PATCH 1/9] dt-bindings: remoteproc: qcom,ipq8074-wcss-pil: convert to DT
 schema
Date: Sat, 20 Dec 2025 12:40:19 -0600
Message-ID: <7075845.DvuYhMxLoT@nukework.gtech>
In-Reply-To: <abec3933-279d-4111-8adf-a2e1280ce0b7@kernel.org>
References:
 <20251219043425.888585-1-mr.nuke.me@gmail.com>
 <abec3933-279d-4111-8adf-a2e1280ce0b7@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday, December 19, 2025 8:52:51 AM CST Krzysztof Kozlowski wrote:
> On 19/12/2025 05:34, Alexandru Gagniuc wrote:
> > Convert the QCS404 and IPQ WCSS Peripheral Image Loader bindings to DT
> > schema. The text bindngs incorrectly implied that IPQ8074 needs only
> > one qcom,smem-states entry. This is only true for QCS404. IPQ8074
> > requires both "stop" and "shutdown".
> > 
> > The example is to be added in a subsequent commit that adds the
> > IPQ9574 binding.
> > 
> > Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
> 
> > I used my name as a placeholder for the "maintainer" field. Krzysztof
> > mentioned to get the "SOC maintainer" using get_maintainer. I don't
> > know how to do that, and I don't see anyone listed for QCS404,
> > IPQ8074, or IPQ9574. The bindings apply to any of those SOCs.
> 
> the soc DTSI file 

Thank you Krzysztof! That's exactly what I needed to know

Alex





