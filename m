Return-Path: <devicetree+bounces-266001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +L/oLJQelGk1AAIAu9opvQ
	(envelope-from <devicetree+bounces-266001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13E26149673
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:53:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DBABA300C5B8
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EE3F2DB795;
	Tue, 17 Feb 2026 07:53:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kh/DgkVM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hLV2MubH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2493E2D8DB1
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771314816; cv=none; b=eSDvAvdgSDnGJYwZ1vz+BeGGuqPxcZ85VWaxPUA6JTWRu9zb/SxwdrkZFSvwcbmcVr0XLFqRsGS/eXRmo60qTJuybi5PWDVx4x5/0hqaI09kfEEwxOL0MS5fnVi6gpXiM6LgFWShtj3gTYEsKIUhhHoZd3jW2das1/yl0EktsPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771314816; c=relaxed/simple;
	bh=u10W0dZQkXKK92GV/cpGKMrlxzSLCDLg8iUDPQNa+Dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eiqmi6wcTnOAuX1N2olAfKzvuVWAmPgW4tzPHUsVI4mEXRHfyI5vSxk0ihyEuKrncE/bTsGadMFvEBg8a4QjWbQGNncl4jJ8R/nwl4HhA3lJhh9VIVPaBW+yQTQlM7LK7VhEWl/NVi6+x+ck9G7pducOp/WLkzCJTOz2f14xcWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kh/DgkVM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hLV2MubH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GGKmlO289398
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HlyIZEog6J3u33MMe7AFXbsT
	oOYrvaz+iKp7UgWrFA0=; b=kh/DgkVMfTUv94MQxfiFtIZvNho6Sio2iEoAmdwt
	p9wU7zr1g7ZzxgGBXfXYlLjq3TPOM3hJ8D/b9aSchRwQxwjF3e1rthYMJutvF2vt
	EDvweYnq4avWV8HWeNz8wQPR0a6rjvhP/Gy9m78DqnJoDvhWhNwFPzf6cYjloITR
	WlRrIBZZkeKKGf1mPDdDqAGO1R0Pv4FdvTQ5K3zENBUVBmxKAovlQVsrsCZtT5Zr
	ZFCsnc5h5NmVAks3u2iFAGJ/DgN8EtQRvlauC9OFjC1wQ0CdmcrOqwmQf4/WAy8u
	PQcuvuH07hVls331ZoxcCkHIK7kDNjmeAsIsWRdN9UFYdw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrsgx9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:53:34 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c70e610242so2540870085a.2
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771314813; x=1771919613; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HlyIZEog6J3u33MMe7AFXbsToOYrvaz+iKp7UgWrFA0=;
        b=hLV2MubHHGNpXXu0NdTusfSivPpCktMv8rbTF220RlT835/K5Yu1fwg9a+mrD74jZv
         T8CRJiofPZtUm60Lhx3aFVqbIVB8R5DGRcRDuL6IsCPViuj6zQXv8aockljC6Z2fmROl
         TqBP2BIsIQeDpmOcxNbHtoe54iFbR67ax8zAhbk667R5HiWtytcycbEvJj/CE4MictVs
         wBP/IlDFdCO8xubx4Mfs3db29+0/iH493bbZmJ/AQoJLVyCx7RhqoFeliyn0GzP1aVib
         jfe+O2v4rzXxq4x7DJ6U/fDgUh3vCQsuxlS7KcUp5u2qGjyMpc3tNZIGitKlFSPcIPQZ
         GcxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771314813; x=1771919613;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HlyIZEog6J3u33MMe7AFXbsToOYrvaz+iKp7UgWrFA0=;
        b=Ci/KUzSFrIKQW9GjHtzKZcsSusm2TQMa8aCoFXJUo4I8H28CuXqJXzSYTv+Fg23KP+
         yvagKjHLfQi47M8ZCosqORh2NvyKz+oMbn7+3DQyLO49wzOFZSyUOtaCDtnACUYNt6dP
         s9U1k2VKw7+y1cxXBJN0lb4mLPqsNJZC7v8jB4jzy1kQ3aIo9A2/yH5WONNVo1ctLOF/
         VXSup/nCA3hRPrBAfXOW7RETpOYMgWGRpQHQt7mB6gNd5LMuwNTQgeV9ltob7RFvZlAU
         zyY5u/J9h1cyHpqQwIeIdi2iW8w9si7ZnTY8/QBIk+l1hnpaGYUjnJlQJXtsVakAaO/J
         5RMQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2tr/O+tCRudAdXnjyUdlMYY9svP6/DqRz+syEO4ShTBuTbsFA2m3GV6IBJVcoia3FK62vcoVZ0odv@vger.kernel.org
X-Gm-Message-State: AOJu0YxsQ60vhJyoBooS3KysK52s3woBEKhJnhcm979AfDNpjtshnCZy
	21DpZQUa1zYN2ElpB6+uajwG81IFvieF8qhRBThclsbuAEeuXJiak2TXA6koNP13BzBYLjtOTlE
	s3rIkh4D2CFIzjiJ+fVHw+lEeGxj/HQftIRyP85eXODbTiaCd+sJIE/oO/EubSOVO
X-Gm-Gg: AZuq6aIp/zxkn5KszJcd4AGo8ZfVkHArVgWVSHHC/WWhsjrxQAuJptBKxyIoIMEcRhe
	khxMPI93cYcRHlfpG+t3scbRaywEP3iKGfMZvU305hyehkYR4YL6xf5vBLSD2cHiydecFfcJjQF
	XxIcrGl5RciUsLRfXYr5RaRtMQeALfkKn5AjCgpXDln1ujb8D8yfrjQTTqmJOigUXKRdeXEWxxG
	lEoUa1/HBCzWLTImFSodBNvwVl1ltcgVogxkdRmv/JHqUH1WO4usBZgFGuGVwo5YB75tW+xb+Hb
	4Veh57zIxHmb1aMOefin+OAh/+hseQ09ObJRiDlwpnH8bwEp/1sDsW2sr7/njB5UYBC4KJJjXKW
	XAhw4MZBOBV0hHEZUQtkVaVaVXibmandgmIHq
X-Received: by 2002:a05:620a:1728:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8cb4225fdb1mr1520260585a.2.1771314813327;
        Mon, 16 Feb 2026 23:53:33 -0800 (PST)
X-Received: by 2002:a05:620a:1728:b0:8c0:d16b:b0a7 with SMTP id af79cd13be357-8cb4225fdb1mr1520259285a.2.1771314812848;
        Mon, 16 Feb 2026 23:53:32 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796ac9d77sm29866948f8f.33.2026.02.16.23.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:53:30 -0800 (PST)
Date: Tue, 17 Feb 2026 09:53:29 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: kernel test robot <lkp@intel.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>, llvm@lists.linux.dev,
        oe-kbuild-all@lists.linux.dev, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
Message-ID: <ckfybgx4suqpm2hjkm3zgdssxh4rmy4dxxjy35yqarg2ybu6fk@fl77gdnzvnhy>
References: <20260216-eliza-clocks-v3-6-8afc5a7e3a98@oss.qualcomm.com>
 <202602171002.SP54PXRC-lkp@intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202602171002.SP54PXRC-lkp@intel.com>
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=69941e7e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=NEAV23lmAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=i3X5FwGiAAAA:8
 a=QyXUC8HyAAAA:8 a=gSbDSvPH9l2sfEXJlosA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=mmqRlSCDY2ywfjPLJ4af:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2NCBTYWx0ZWRfXwXSBn3WYJ7dX
 iOz88bvzSa4uebWsAvFG6Cf6Dej6DPzNWd3splu97yLYRSbSmefGruK8nq6QMBnuF4HoUFBofHo
 x96tirlmjQUSdL0jKO2beR/UEJPNLotU4hK82TCOj7cGkv27FnT5R4hS9RQLVQ44dNfLAcF/ZMA
 ostqAay+By4KlClXGWm4/Bw7hB9+HH4dfE4cr2W/L9CHhYtQsEClamiaUPiioa2TkJNMZ4c/rQG
 emnASa18aWL0yV3Gnsexoob0q+5+Kj33XfN1IT2L2EHX+mTiqNCRhx4ot52ut17GvqUfh/EfIj+
 hbpeq7zq8k7+QYESy1e7EF9Nipy4MZS6ZdfmZ64MzkzfBcbQDdGiBxXbQp+Tz0Lpb2s47ylmW0A
 BTOOInKhWrPYlA+pxBIt8+19EDTuM8fek1p7qKhDB3Gem7f1eCLR7TnUriW3NkLUQB1oqmtB2Yg
 N4B2/LjRWp62oWHSvaw==
X-Proofpoint-ORIG-GUID: Dqw8OSRNDJWYmZsq-2O2FFiP5Fkw8Ldr
X-Proofpoint-GUID: Dqw8OSRNDJWYmZsq-2O2FFiP5Fkw8Ldr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170064
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266001-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 13E26149673
X-Rspamd-Action: no action

On 26-02-17 10:31:45, kernel test robot wrote:
> Hi Abel,
> 
> kernel test robot noticed the following build errors:
> 
> [auto build test ERROR on 635c467cc14ebdffab3f77610217c1dacaf88e8c]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Abel-Vesa/dt-bindings-clock-qcom-document-the-Eliza-Global-Clock-Controller/20260216-215148
> base:   635c467cc14ebdffab3f77610217c1dacaf88e8c
> patch link:    https://lore.kernel.org/r/20260216-eliza-clocks-v3-6-8afc5a7e3a98%40oss.qualcomm.com
> patch subject: [PATCH v3 6/6] clk: qcom: Add TCSR clock driver for Eliza
> config: hexagon-allmodconfig (https://download.01.org/0day-ci/archive/20260217/202602171002.SP54PXRC-lkp@intel.com/config)
> compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260217/202602171002.SP54PXRC-lkp@intel.com/reproduce)
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202602171002.SP54PXRC-lkp@intel.com/
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/clk/qcom/tcsrcc-eliza.c:126:3: error: use of undeclared identifier 'TCSR_HDMI_CLKREF_EN'
>      126 |         [TCSR_HDMI_CLKREF_EN] = &tcsr_hdmi_clkref_en.clkr,
>          |          ^
> >> drivers/clk/qcom/tcsrcc-eliza.c:128:3: error: use of undeclared identifier 'TCSR_PCIE_1_CLKREF_EN'
>      128 |         [TCSR_PCIE_1_CLKREF_EN] = &tcsr_pcie_1_clkref_en.clkr,
>          |          ^
> >> drivers/clk/qcom/tcsrcc-eliza.c:145:14: error: invalid application of 'sizeof' to an incomplete type 'struct clk_regmap *[]'
>      145 |         .num_clks = ARRAY_SIZE(tcsr_cc_eliza_clocks),
>          |                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/array_size.h:11:32: note: expanded from macro 'ARRAY_SIZE'
>       11 | #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]) + __must_be_array(arr))
>          |                                ^~~~~
>    3 errors generated.

Fixed in v4.

