Return-Path: <devicetree+bounces-234840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B76C3153E
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 14:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3BEB034E27E
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 13:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 537B732A3C5;
	Tue,  4 Nov 2025 13:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YFKkKFxn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907C2EFD80
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 13:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762264570; cv=none; b=foHEqYEP+W0ojYgxCjRHDGehmLS4qnnw1Dyo6fyFZEPGsAz5Es5tOxhhqRXSs6gkK+yzKJMQz8Jj2GcM6pgbz4pMv19HcOzxUIEOibGw1sw0Ugm17v/hQfl7u6fIV6nyWTmhmAf1XKMdPEB8eBH9aBIMMFNU8U6M1s25KYrVvc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762264570; c=relaxed/simple;
	bh=Nk+e5LhOXq+Tmrjv3KNGu3kVW3GltI/oydlbegPLvhs=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=YdBVZnQWCBnizLnHaT2wPJ94VjGfUmCFPI2kBaVJqxlOUHTJ9rZYW5O4uXpWXh+qh/6wgIZcWHeigyVd8aBn+lCaO7VSsKKDIAk7/SzgRwzxKDzcGhdBvMNrBwFDKEL0Scja7QwiIBm1d6X7TtRkZRASaA84vxXA4E1a1LXfBlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YFKkKFxn; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-640f8a7aba2so417142a12.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 05:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762264565; x=1762869365; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9xqeXfYjcP291VncmE7WWBGfjBpgWY07soqm4ctLrA=;
        b=YFKkKFxngWlMvC/yByJlU1jGogG12tAIMhGG7cnibFQZqlmgtrlL2f8s6K1LIVhP/2
         Zr9RTqMB5HWcAG6uzSeKj1ggVZdVk1xLl/21+fLBRwctJAh0NFGQextCA8jZmKXKgEVf
         e3GHlm4PBiOUnyb5ldz1pY+qF+cCMm5QANxQBe61t/Fd3eNE9cwdMwgnSOAKP2ay4sZg
         3H0ajljobZ17yvD9HHrWlAojaDXte8U6ty2atAW+xtZEfMTj8XzoSwRzLYFIaIIoK1JK
         bltEtsSG/yAkQK4B9RH7mdRU6VGdCIjAP+05aBLAjhowjlEM0URTFzIVG9zxVbPsWJio
         7tAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762264565; x=1762869365;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/9xqeXfYjcP291VncmE7WWBGfjBpgWY07soqm4ctLrA=;
        b=LROkJjtsI9wbVjjbY/+jWa+6FK1Q05nISimwjB+7fVpCpstfuF2OUi3N5D6Lqb6klQ
         9VZKyxgFSGEETp6P60ehMqiSV/nI6a31OGxWt6owrZZkQyE1S9KSPSug7IxYLHDuzlsF
         k++rWUowDpEeyNXhLP9B0CS1zXrgaB6br+ZS5/0hm99sHkm/6aBOesZLFrKT/uw+BNBf
         ra30ut7WHL/JCYxXF0koBNk6a/UNZc0RH6sLQd4TwzM9a7zREz6mNdzrr++QLw6zyiOJ
         I3RYhQ9hwxQsVXl2uNH+LSCkrYXQKMXF7ZjctzYSbtSDS6BX3ifwWXJisgN75VCh8GsH
         FudA==
X-Forwarded-Encrypted: i=1; AJvYcCWLq1ANLhShDTKnqCLJRCRUmc9q6ocS7jpQQ2I76uHeqlP918tJeImhRhhEntDyDZFLAMbIcIghmz6Z@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0jeuKVhtM0LsiIIVggJ0ap5YfWFuA6lG8EkfgXTR/m8ObRyDX
	4JasFh0V6gCA6hRnqaaLyNBi+L7rG0Eiax/LqvYZMbaITwdd966A90Ce63jtt4MB2oQ=
X-Gm-Gg: ASbGnctvz7T2C5N8WHAQI4O3Lh38d88KurlM3Y1RsQ/77WU6YYPMDSotMJAnseHI3Pd
	S+oCfszcK0gWMg+mg4q6BiAhbxlDXsFElrK93GUWLoslsB4kGiDYPAAc963MKS3VHs/rJbGX1/v
	nzDBtix5iaQTmdDNZtzUU5OCRiAP3ko5oh6ZNpr8lz5b0N//vUXC9BzY97ccCQbJZK8J/zQt/3R
	L6QO42rp3cfrHc2eM2i3Ol8dvqB/sF+q2uhggVHameFzLOfMvrFxdIK2sapAaWHyNYSnwbjzgf/
	7gyNVVVZRs9J64+kyptYPra3R4Vm2mFdOsIPj7kmKfTYoJPia/Ub80sdkkmqJZRKsRGIBHHMNhK
	sSI9JxGpFfKDH7N3b06WAoAJUUFazo9FqE5MVJf4zzxZa4JclEs+fuIuraekpqLi3HZU7t2T+uF
	4pogpKP3Hmdzdv9g==
X-Google-Smtp-Source: AGHT+IHg9hzENV90vT/x+1SvpgnGo7dcxlkRT1qTgL5xvtzGvp0xcgTMKZtHtHlnlzzokSRFGidBrQ==
X-Received: by 2002:a17:907:608b:b0:b2e:9926:3919 with SMTP id a640c23a62f3a-b707018c40dmr1622075266b.22.1762264565514;
        Tue, 04 Nov 2025 05:56:05 -0800 (PST)
Received: from localhost ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f273fsm215301566b.17.2025.11.04.05.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 05:56:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 04 Nov 2025 13:56:05 +0000
Message-Id: <DDZYNH5X7EEQ.3TSTRMMMIXUSD@linaro.org>
Cc: "Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, <cros-qcom-dts-watchers@chromium.org>,
 <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 0/3] arm64: dts: qcom: rename dtsi files for qcm2290,
 sc7280 and x1p42100
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Bjorn Andersson" <andersson@kernel.org>, "Konrad Dybcio"
 <konradybcio@kernel.org>
X-Mailer: aerc 0.21.0
References: <20251030-rename-dts-2-v1-0-80c0b81c4d77@oss.qualcomm.com>
 <176210698627.937813.1347882402480558851.b4-ty@kernel.org>
In-Reply-To: <176210698627.937813.1347882402480558851.b4-ty@kernel.org>

On Sun Nov 2, 2025 at 6:09 PM GMT, Bjorn Andersson wrote:
>
> On Thu, 30 Oct 2025 20:20:12 +0200, Dmitry Baryshkov wrote:
>> Follow the earlier example and rename several more base DTSI files for
>> the platforms where we have (or expect) several SKU ids for a single
>> platform.
>>=20
>>=20
>
> Applied, thanks!
>
> [1/3] arm64: dts: qcom: rename qcm2290 to agatti
>       commit: 021df9dee9cd63eee1cfae1bb2381db11a1a45d7
> [2/3] arm64: dts: qcom: rename sc7280 to kodiak
>       commit: dd6edcd7d3e42b143a2f86e8d30ded62106a8972
> [3/3] arm64: dts: qcom: rename x1p42100 to purwa
>       commit: ef659a5bd91bed7fae2c2a150f8ecca06599ac03

FWIW tags/trailers are missing in the commit log:
https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git/commit/?h=3D=
for-next&id=3D021df9dee9cd63eee1cfae1bb2381db11a1a45d7

Thanks,
Alexey


