Return-Path: <devicetree+bounces-254796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 083CAD1C4D5
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 04:54:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C25B73016DFD
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D73512D5408;
	Wed, 14 Jan 2026 03:54:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BHff7knx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 566A226A1AF
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768362846; cv=none; b=P3X8KLiMfWC+Aps77fHMMd8q7nJzaZnnDvYELUz3RU4lAx4vqbATAunLwuBWFmP7wVSIwI30/qAvY7bzAbmeWdkpPHSuvKua1nQPnJ5U/NxqfueFsZDeiH4/q+rT/LR57UpgPgnLpSjtMQo9binNdAr0dWDHARpHSdPcVkgLO90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768362846; c=relaxed/simple;
	bh=49Agcpa3CyOrsrq3mxJxyGH0gvBgFmZs5flbI2qCHE4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EJtK5WkQS+2dDEtuL1kPn6UpOISo3gXOoH3ZrfZUqziaG+zvyoo657TuKqD4L0BgP36TP1M4nsGkgcg0AGY4n8QOq8Wb2gvoenedKronlyPBlr3M/5DszM2q5w08xeIBw9Z+8h30z7jGG8hQ04y47TqJnuc56qBXD/kEPvZB07o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BHff7knx; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-45090ef26c6so2905770b6e.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 19:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768362844; x=1768967644; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=os7psBao2TAcJgN/WPhuBCCHt5VJwqCGY+lkgH3GuIM=;
        b=BHff7knxIjXR9o3S5bPVLTTdCSxKsLlqepizM9GDtWS+Irqt86qwnMIS6dnFrobbz0
         NdEgeFsncS1cz08u3mqtV/V0mwzaqcM1ieLj0KBi83FNarTGCQ26kh1gfb6oQQ3fNvjk
         uThReZYl10EdvAGhSYMXu7NB9TILMYJktuVNeO9y9a6P1iCwZBaHiC+H89Hqd2Rj03Ty
         SGfHjFYI/z9By6N0Kz5Gh7wYI4DGuBwmvX5sOBaa3UZp/y7DSwn2hjuN2ZGt0+91OfiF
         ZR6MxyfT3FNgXmxmHnXcFpLZLHQsvXXFK8zqq1ImRopO0lSkzuJlPdZJLRzlhIyQcODQ
         PNMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768362844; x=1768967644;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=os7psBao2TAcJgN/WPhuBCCHt5VJwqCGY+lkgH3GuIM=;
        b=UPDojEZK3UFBFr41rRatmgrw1vZM56czE2/YCUihaxEN4sX8R9zr3H0S5UmGmIX4Zl
         dIQWYc5RWCSsSwoaswGJJ+GKT4CAZGjhBiMAId5CHXrbdsZV572A3qBSA8encMvruga4
         bYYB37A4Ax/RT38rR1GPDY2oPmO1CC6XPZOQN4XdwWn4J0EkZrThWHDcPiWbr3wXwx87
         MbZQXSaBqEMBgPeP+6PkbeJdPT4NJBFwOjB6J3qbqq/caeaUC6flXHvVh7M62Y5Vr3jH
         HScxldhUIGbNNHzUm7/Xxakejchqg3tWouiRD34n5AvQp/mUHOX/nooW4nXF5HAftnZu
         Pslw==
X-Forwarded-Encrypted: i=1; AJvYcCUMPthxz+0IqrnMuYvAC+YEle7WOtvMCZoT+1EbOgYqgdMuRP9GYnbjbb2RYtPY9OJcCqJ7TBxw3xv3@vger.kernel.org
X-Gm-Message-State: AOJu0YxdgcTwe6eunnY0DJHc6FkXtkFfQhy9EiK2Xg8IazMtHwWR7nBz
	DJQknWKh4QabaEQ0LlFInTWUYZSYIxQm1j+YBP7Mi53jGibqNrG+HrIg
X-Gm-Gg: AY/fxX4zuUQSzahU7agvg+Iq13755dBGqlxhnt1AdU+i+3Pl9giVi2ellzpC6N71WjE
	25gEO4cBzywDHeAI3Ze4qnryaKh3bdGoeIn9NSmjTxH5hL+WrQ7MinMNdOVAKzSDSO+qBhWUCnJ
	qM0OZwsExCU0cQGTis5s9LOYDp8ufmDp27aWCAemjan7yRqt1zoVVurqe4/0qgl8YMegila+VwI
	3nowTkBoYQgsGhr5x5/h0zZGlMdt3sZTLBw/TPSoR1qee3sv28NJBTAokLxEB0LtkR5IXEuYZdF
	Eg6BwN7Mi6FfaIrDpKIgEe4oQCKzgxoZe1aO6cI6jyu+VPUZYyE6STes7Dl+m2t3LqRVd1jCVBH
	6kHJlPh4smnPS2zpgUge934xFBloooPGX5Mi0AqmUmyiEMqtV6iWt5za2N9ST69x6q+55rbOSou
	84EYdnc25zk/l5/x6zuC6JMHXHOHbuVPTfTpxdWGsU/GkPZoTD0xNQLEabUeQRspil5FxX85ZSD
	ziT07evt1zf3yumC1TrKWAubTpk3MmkLQjFpOR6Ig==
X-Received: by 2002:a05:6808:c14b:b0:455:d4ee:bb2a with SMTP id 5614622812f47-45c7142ffafmr1012777b6e.5.1768362844292;
        Tue, 13 Jan 2026 19:54:04 -0800 (PST)
Received: from nukework.gtech (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa50721a6sm15877468fac.10.2026.01.13.19.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 19:54:02 -0800 (PST)
From: "Alex G." <mr.nuke.me@gmail.com>
To: andersson@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-remoteproc@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: mathieu.poirier@linaro.org, robh@kernel.org, conor+dt@kernel.org,
 konradybcio@kernel.org, sboyd@kernel.org, p.zabel@pengutronix.de,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject:
 Re: [PATCH v2 0/9] remoteproc: qcom_q6v5_wcss: add native ipq9574 support
Date: Tue, 13 Jan 2026 21:54:00 -0600
Message-ID: <4814455.tdWV9SEqCh@nukework.gtech>
In-Reply-To: <14283f23-31cc-4bf8-9762-f0348c30618d@oss.qualcomm.com>
References:
 <20260109043352.3072933-1-mr.nuke.me@gmail.com>
 <14283f23-31cc-4bf8-9762-f0348c30618d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, January 13, 2026 8:28:11 AM CST Konrad Dybcio wrote:
> On 1/9/26 5:33 AM, Alexandru Gagniuc wrote:
> > Support loading remoteproc firmware on IPQ9574 with the qcom_q6v5_wcss
> > driver. This firmware is usually used to run ath11k firmware and enable
> > wifi with chips such as QCN5024.
> > 
> > When submitting v1, I learned that the firmware can also be loaded by
> > the trustzone firmware. Since TZ is not shipped with the kernel, it
> > makes sense to have the option of a native init sequence, as not all
> > devices come with the latest TZ firmware.
> > 
> > Qualcomm tries to assure us that the TZ firmware will always do the
> > right thing (TM), but I am not fully convinced
> 
> Why else do you think it's there in the firmware? :(

A more relevant question is, why do some contributors sincerely believe that 
the TZ initialization of Q6 firmware is not a good idea for their use case?

To answer your question, I think the TZ initialization is an afterthought of 
the SoC design. I think it was only after ther the design stage that it was 
brought up that a remoteproc on AHB has out-of-band access to system memory, 
which poses security concerns to some customers. I think authentication was 
implemented in TZ to address that. I also think that in order to prevent clock 
glitching from bypassing such verification, they had to move the initialization 
sequence in TZ as well.

Alex






