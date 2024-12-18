Return-Path: <devicetree+bounces-132099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CA19F5C2F
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 02:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D29737A0264
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 01:20:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34F8A2E630;
	Wed, 18 Dec 2024 01:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b="F+uvHjL5"
X-Original-To: devicetree@vger.kernel.org
Received: from out30-113.freemail.mail.aliyun.com (out30-113.freemail.mail.aliyun.com [115.124.30.113])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D362F2A;
	Wed, 18 Dec 2024 01:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=115.124.30.113
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734484812; cv=none; b=MV/U2v0Zkwc2msH5Ir+XUd4+FYqXrmGRkn+dafGgS4uHER6Iy1f8qnUTkzECNpnhB/jgD70SMnNrBOa6/eH8H9LUSpNc9JaehI0ALJReS0f7VAFvtwZ+O2YHG5c4zkSOHxLzLr8WhJAGeDOsj63Y7D2o0tARqexUzCdNyGYCcaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734484812; c=relaxed/simple;
	bh=03a+ngSjddlYskl9TTp0mxFcau6BiWSGfQhjzhuExUw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ubPgLIe7/6ooZuTs+p09b8GPkEHtNMsHRZhhsNFosD9xGpsB2oM3ij1SLnBFSZB/dhNRhbI4xkHDffcm0ZOLpQy+y2YaUJGRPJEPvaR41nlCKzZjJBxx1Fg6KnbjkHintAWihDEJfEq6MSrdKS1416J+LrWhcCp0K0HjPIJmllI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com; spf=pass smtp.mailfrom=linux.alibaba.com; dkim=pass (1024-bit key) header.d=linux.alibaba.com header.i=@linux.alibaba.com header.b=F+uvHjL5; arc=none smtp.client-ip=115.124.30.113
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.alibaba.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.alibaba.com
DKIM-Signature:v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux.alibaba.com; s=default;
	t=1734484806; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
	bh=151jFBE/O7sNLIikx5IuRi5QZ9s1vppGKY8kBzClQtw=;
	b=F+uvHjL53L/c0cNckue8S1fxAb4HT2v6l+2ZKyztEX9RlP6LrLMX8CAIt5IRAvaHaJVyX0iwCX1P1lbge1a3bdy5E2nBhMT9GjIR+o1XaUfkfFBqma24veOLWYYGJK9pZsm1RamRzk6wLT2867KYkWywD2szpKciEZ1u1I0DAlA=
Received: from 30.74.144.132(mailfrom:baolin.wang@linux.alibaba.com fp:SMTPD_---0WLkVs1x_1734484804 cluster:ay36)
          by smtp.aliyun-inc.com;
          Wed, 18 Dec 2024 09:20:05 +0800
Message-ID: <695bcc62-c7a4-4a06-aa88-6c12781cd67c@linux.alibaba.com>
Date: Wed, 18 Dec 2024 09:20:03 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] dt-bindings: mfd: sprd,sc2731: reference
 sprd,sc2731-efuse bindings
To: Stanislav Jakubek <stano.jakubek@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <Z1_9ROiI2ZHKsbAD@standask-GA-A55M-S2HP>
From: Baolin Wang <baolin.wang@linux.alibaba.com>
In-Reply-To: <Z1_9ROiI2ZHKsbAD@standask-GA-A55M-S2HP>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 2024/12/16 18:13, Stanislav Jakubek wrote:
> Directly reference the sc2731-efuse bindings to simplify the schema.
> Remove the duplicate example from the efuse bindings.
> While at it, add the "pmic_adc" label that was missed during the
> initial YAML conversion.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>

Thanks. LGTM.
Reviewed-by: Baolin Wang <baolin.wang@linux.alibaba.com>

