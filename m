Return-Path: <devicetree+bounces-138502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E2D6A10A93
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 16:21:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A35021889CEA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421CE85C5E;
	Tue, 14 Jan 2025 15:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b="wTimGcNq"
X-Original-To: devicetree@vger.kernel.org
Received: from pv50p00im-hyfv10011601.me.com (pv50p00im-hyfv10011601.me.com [17.58.6.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3582232437
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 15:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=17.58.6.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736868060; cv=none; b=I/9ZNEdTr+PSS52mzWD/lM7oJdYt6NJ/huTh64MWAjxE0noGvzo4uEGuXdxDKcmvfqZrljsZVC/1KMCmvlhbu/b9VIqMlApLJAve5wUgtlyFlRNY+FZKTTeNxFw4mvU/5UR2acRr9UVp8aKnHIv3pPjiZib8Z1+IaqHGuW1cuhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736868060; c=relaxed/simple;
	bh=n6GS3JccaWGNQ3BYwTuRn4OiqzmMwXiZnu0LDCIqH/E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=huELhS7x3mYTU2hWkS1EMXksQeYQb5Jqik5+/dYiMKjAKujvG4L970R707ISTfcryvBVwpE6fanzZTDvQjQ+0oqxsd1bR31+RfUM0yfIc9udjDvCctPMWNprWanOJeumY3KvDcICD/Pr9NKpmoRDGJUQ7Pf9OAhBcpuPH2B1Fxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com; spf=pass smtp.mailfrom=icloud.com; dkim=pass (2048-bit key) header.d=icloud.com header.i=@icloud.com header.b=wTimGcNq; arc=none smtp.client-ip=17.58.6.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=icloud.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=icloud.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1736868058;
	bh=QtmpsGqi1x6SZZ81TAv4AO6thw9xB4Mh+MveYzmeDZo=;
	h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type:
	 x-icloud-hme;
	b=wTimGcNqq8eysYPRShKucaPMbb2JfyUSCH9XEtzceoRQ95x8tK10soDgEiOr6S6wO
	 J7DqvUfrR9+lX84nStWh/zKiZSCWqZdH9cEMjSmJ1ziWM6yJIhfNCAvaDapvqoeRnx
	 GeGLmwFUo8f+j7WClJuCMKvRk7FZKj04uRSbHT3dCU4CGrXbte0DF7r7PhuSV414Yv
	 PnKHR5mJQ44XFHsiim+ofUziSdoG25squYp2nihOwJynWJGqc5cOP+ndN5ZfLTTt8w
	 Mx8PGcxrpDw7yAAhgb5mwzBzzIqv9wAeUfPPytEsA8TOc+87fiub29+pzLiRQ9OHuy
	 wgiE00alLu4FQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id 19C8CC80193;
	Tue, 14 Jan 2025 15:20:50 +0000 (UTC)
Message-ID: <55a2e1cc-0a34-4599-8d62-a2479a0eac87@icloud.com>
Date: Tue, 14 Jan 2025 23:20:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 14/14] of: Improve __of_add_property_sysfs()
 readability
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>,
 Andreas Herrmann <andreas.herrmann@calxeda.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>,
 Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-14-db8a72415b8c@quicinc.com>
 <20250110204154.GA3529721-robh@kernel.org>
 <c79dd576-0a85-48e2-a7f8-e4b4e005a18b@icloud.com>
 <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
Content-Language: en-US
From: Zijun Hu <zijun_hu@icloud.com>
In-Reply-To: <qvyhzgeye7qwppcafisvjkg4wwkrenwxq7nebnsjxdenj7wvxm@qwxzet3iyzyx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: d7wQhcQhuXEGQDyB2cISS_BCRldU6kec
X-Proofpoint-ORIG-GUID: d7wQhcQhuXEGQDyB2cISS_BCRldU6kec
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-14_05,2025-01-13_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 mlxlogscore=551 malwarescore=0 phishscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2501140121

On 2025/1/11 17:17, Krzysztof Kozlowski wrote:
>> const char security_prefix[] = "security-";
>> use 'sizeof(security_prefix) - 1' for the length of string.
> Code is still not equivalent - just de-assemble it and you will see
> some overhead.
> 
> Maybe just introduce builtin_strlen() to string.h and use such? It would
> be the pretty obvious code.

strncmp(s1, "s2_string", builtin_strlen("s2_string")) is similar as
strncmp(s1, "s2_string", sizeof("s2_string") - 1).

so perhaps, it is not worthy of a new builtin_strlen().

