Return-Path: <devicetree+bounces-255208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E73D21314
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 21:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 681AD302D5FF
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 20:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADFAB3563E5;
	Wed, 14 Jan 2026 20:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ns25+uld";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QojVEQ1R"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1773446B0
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:34:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768422881; cv=none; b=Qg9pq0mJPNAtJUZ5c0nVzISSH5qoewkQzJB2isZEmn1Qk68qnNi8Uz30253z7LoFXLH1F1urDaBp7/0MjnrqQCibBD/wZofhjMH54UrknbH6QEQATObNuC3kOwL0yQ7SiS0V08rFPEZ5inrwduw/iZflhJEqvIYIpg4/Gsg1OxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768422881; c=relaxed/simple;
	bh=NY4GbfVkjwy7A5J7O8z8rR5qsvbrg1pfkeZuiGygh0M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FsZhL7oepUeGWJ7/VXn8L7F2yDgCFJHlSlgWc6gQQ1UQko1/gPwLNfxf4bV7ehFmSt7S3vr4C8TNg1bcTS4lwF1UvKH+712iPyK+GDEF21CdQo9tGb67M8isywaeE+O2BRAHJPuJheopk6ciD6f63QiT2c6SRCh1Xk6M9T4QC0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ns25+uld; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QojVEQ1R; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EChVlT3925445
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:34:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qHW56oNgeXN1LDKk47rv/B9tfR21iu9oe971dwrhaBA=; b=Ns25+uldQ1DaIQeO
	HjYOpkWlYYe3g8JDT1yTh0ggWSEOBdKUP7IQQdK/m6u87EBdlAiyjM8cVcsUE/ER
	wH/0zS36jL2yIJvdkx4ZYA/rFXr509YPvxYMEi0fqXFkyGs5VvrBom6he7rDfAPE
	uSmlPi1gYIFCKBxlpIQfchkYhqywZCRH4JNI1eeIJ1bo7Iwiq3lqAcdv4gl5TfL8
	g8vFo0OQBtaq1h+hGfP/SwSS/Ev+hcNCbDqXzEjBggdUrATyNPMVAUOoCQjwwgJf
	MltwdO4xzDo7m259cDcvpBWOxx4P36NmbW7DgQer7rb8+1Bk9ox2gnaTFLF9Vt1N
	gIZurQ==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpbdbskdm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:34:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ae546fa935so1928028eec.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768422878; x=1769027678; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qHW56oNgeXN1LDKk47rv/B9tfR21iu9oe971dwrhaBA=;
        b=QojVEQ1RdbuZCsb3abMX3o3MGxnXP8ilmlqPwkML8RNNjjhHXvFv+Q2kPOtPDX2PIV
         0SLY4rE+QnZuwYLZx+x1tZGiB0du89guOcz4xTvf4durzu6LomTYNivJ/oKs5Yivqs4A
         3yzs6QVnjvctqvv9C28AX/mlNkYD06zpM0g+NfeT5HkY7SA6D/Wp6jeFNxFeNtj2Au+q
         siP/zWRaKnLIH+8OaBqm9iVMS1CIdYtloJaQYtPYxmQbNQ1Q/8FVnQg0iwj9APyR7aWH
         z+F2J6wZwC5aK8NcyJUUB2AvapxifCrRqpprQQswIGKAGVURGJVy+tAwLtaPi09b0XvO
         gJLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768422878; x=1769027678;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qHW56oNgeXN1LDKk47rv/B9tfR21iu9oe971dwrhaBA=;
        b=us8VYv00bfqc9cED8mTvhpMWSVG951/Vl75TKsqSyqkGetLQFzqZBFwjxyGw8zhGCB
         YXmeLanfZC4F0lhBCQs3gb9Dj0HIKiWHpz4CwcmapiabVaF0izkKpi5MvwqnW8h6oo95
         nEunKgeJzrTRJmfXZfo2tU/J96Yoe2DmTNeLkDDs07XeXhsrgazVa6MvEAVh/4LdVaAi
         7b/iq+0SiUWKzeUmSACEja+UhjsZkBISHnnRzcxMHoF0EH6kYBeFeXMh7WPLYPIZIoAd
         bq1LDmQ9nccuwQLVn7un7eZYK78H9Q3ObDlxSit3Ms9C5Lz+BTa4VXQty7Fpx6vGuMYG
         j/YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUY8JawA924hw690+JbK7957FhWQQQe/0b1CPhvojdBw5ElUa26eW0tOfXIQNawaJi35W6t2GhArTF9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4vw2SW/CxJOUz0wPjVlT7rue8nuZ55H3zSRa+JdiEuiV6MH7S
	T6xqCtN876gC+N1gKSKBQDkdUjmlE8/ibzeaiq6Ctw8RGU1zaIpOVFWbd9QVLSbmJo7ME7qrNeq
	NME0ZqMsjDJyXcHlw9loI7PE+lx68ByIhapaXsRnnKhndr7jxk1JniTlD9rvLzKnZ
X-Gm-Gg: AY/fxX6Eb8uQ71jAgJznBHmQ8nTK5tu82Bns+mX/fiSdVp0xqfIwAtJRvDBGaIUImve
	mIZPS9sgAcTyxUSWiReQX8gMOcO64g4hVBPAAZESO2Ew4FOq50QvMc0OQKoySbBlg92yZ/6QkNK
	ZqJade36tVsibX9vn+egrIB763uZ1BA9ePtwjWD/WYYh9Wg/aE5y1YbnCq85gvja/5TgcsV/Jsz
	cUyT0Ze4uWIVKN4k71ijiik9FMDjdRltn6Bxdvv2HzDkcG9cPiOiwBsNYVnn94+IboxGmNmvEGg
	I5ie7F8wRnbVq7RWr2VFhponF/u+r8V4wS3bSCLF4VEWRNVfBZoAqg1NLXg7T5VEYVVJkozIyxy
	7SbXhRk3ccE+i/sM7gTY=
X-Received: by 2002:a05:693c:2c15:b0:2b0:5bfb:86 with SMTP id 5a478bee46e88-2b48f230681mr4714345eec.17.1768422878241;
        Wed, 14 Jan 2026 12:34:38 -0800 (PST)
X-Received: by 2002:a05:693c:2c15:b0:2b0:5bfb:86 with SMTP id 5a478bee46e88-2b48f230681mr4714293eec.17.1768422877702;
        Wed, 14 Jan 2026 12:34:37 -0800 (PST)
Received: from localhost ([140.82.166.162])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170673bc0sm21242064eec.5.2026.01.14.12.34.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 12:34:36 -0800 (PST)
Date: Wed, 14 Jan 2026 14:34:35 -0600
From: Andrew Jones <andrew.jones@oss.qualcomm.com>
To: joaopeixoto@osyx.tech
Cc: linux-kernel@vger.kernel.org, ajd@linux.ibm.com, alex@ghiti.fr,
        aou@eecs.berkeley.edu, bagasdotme@gmail.com, catalin.marinas@arm.com,
        conor+dt@kernel.org, corbet@lwn.net, dan.j.williams@intel.com,
        davidmcerdeira@osyx.tech, devicetree@vger.kernel.org, dev@kael-k.io,
        gregkh@linuxfoundation.org, haren@linux.ibm.com, heiko@sntech.de,
        jose@osyx.tech, kever.yang@rock-chips.com, krzk+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
        linux-riscv@lists.infradead.org, maddy@linux.ibm.com, mani@kernel.org,
        nathan@kernel.org, neil.armstrong@linaro.org, palmer@dabbelt.com,
        pjw@kernel.org, prabhakar.mahadev-lad.rj@bp.renesas.com,
        robh@kernel.org, will@kernel.org
Subject: Re: [PATCH 5/6] virt: bao: Move BAO_IPCSHMEM_HYPERCALL_ID to common
 header
Message-ID: <5kjiicdwq2ny3zg4mooojsntylukuadx4ajhf7mn7sue4aedpk@j2xfslwvkwur>
References: <20251224135217.25350-1-joaopeixoto@osyx.tech>
 <20260107162829.416885-1-joaopeixoto@osyx.tech>
 <20260107162829.416885-6-joaopeixoto@osyx.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260107162829.416885-6-joaopeixoto@osyx.tech>
X-Authority-Analysis: v=2.4 cv=NvncssdJ c=1 sm=1 tr=0 ts=6967fddf cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=cvcws7F5//HeuvjG1O1erQ==:17
 a=8nJEP1OIZ-IA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=9CwZglbhEJm_Vmq__6wA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=VxAk22fqlfwA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: kJKlrTgIWGpc2sA5O-h3opuiwkOb50ei
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDE2OCBTYWx0ZWRfXy4ItMhrEeu40
 bjrv6M6VZPORRbqqSCkmjnhL7kML7gHTQVZmOD56ftNNzvjPICMdN5uaNur6WPEYYQmNww1E5Fg
 KEujuhuCs4S2k+3IwuQ5/botRMEK18GRjFhpU+0G0P5SIIQS0ZpCJ96gE/WBz+onVc6j1o+FPuS
 RgEBpsximHWJvvhj1poQS6sa28FqFdmibDC7auDcBSlQM6b/qfAsEjun7HGfeSh05tQies01igo
 zLvZ4iYk3zhsDoNyUc7ioWVPkqSTTpuE11fFQi2eoykH7Fn1JdeD5a8scYamz++IbnP/AIXTQM9
 wMr7uLL2Y3n9vmF0UsNB72NgFCuH/ElZEv/VzhNEv9w8hSHwCyouDngQUmZTpxMQJ6YATKL3kVo
 3p/o05opGMB0qHIvDMSWm/ApH78/iuwZbqyBGwlX7oqi0ybqG98ssxDXMhY2R99Z0iKW97+A1wm
 ln7Fun5NL2VUZ9DEILw==
X-Proofpoint-GUID: kJKlrTgIWGpc2sA5O-h3opuiwkOb50ei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_06,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140168

On Wed, Jan 07, 2026 at 04:28:28PM +0000, joaopeixoto@osyx.tech wrote:
> From: João Peixoto <joaopeixoto@osyx.tech>
> 
> Move the IPC shared-memory hypercall ID from architecture-specific
> headers into include/linux/bao.h.

The series should be rebased to have this fixup integrated into the
previous patches where the code is first introduced.

Thanks,
drew

